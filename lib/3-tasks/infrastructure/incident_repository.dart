import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:myapp/3-tasks/domain/incidents/incident.dart';
import 'package:myapp/3-tasks/domain/incidents/i_incident_repository.dart';
import 'package:myapp/3-tasks/domain/task_failure.dart';
import 'package:myapp/shared/infrastructure/auth_storage.dart';
import 'package:myapp/shared/domain/api_constants.dart';
import 'package:mime/mime.dart';
import 'package:http_parser/http_parser.dart';

@LazySingleton(as: IIncidentRepository)
class IncidentRepository implements IIncidentRepository {
  final AuthStorage _authStorage;

  IncidentRepository(this._authStorage);

  @override
  Future<Either<TaskFailure, List<Incident>>> getIncidentsByTask({
    required int taskId,
    required String taskType,
  }) async {
    final token = await _authStorage.getToken();
    final endpoint = taskType == 'TASK_FIELD'
        ? '/incidents/with-task-info/field'
        : '/incidents/with-task-info/industrial';
    try {
      final response = await http.get(
        Uri.parse('${ApiConstants.baseUrl}$endpoint'),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        final incidents = data
            .map((json) => Incident.fromJson(json))
            .where((incident) => incident.taskId == taskId)
            .toList();
        return right(incidents);
      } else {
        return left(const TaskFailure.unableToFetch());
      }
    } catch (e) {
      return left(const TaskFailure.unexpected());
    }
  }

  @override
  Future<Either<TaskFailure, Incident>> createIncident({
    required int taskId,
    required String description,
    required String imagePath,
  }) async {
    final token = await _authStorage.getToken();
    try {
      final request = http.MultipartRequest(
        'POST',
        Uri.parse('${ApiConstants.baseUrl}/incidents'),
      );

      request.headers['Authorization'] = 'Bearer $token';

      final incidentJson = json.encode({
        'taskId': taskId,
        'description': description,
      });

      final incidentPart = http.MultipartFile.fromString(
        'incident',
        incidentJson,
        contentType: MediaType('application', 'json'),
      );
      request.files.add(incidentPart);

      final mimeType = lookupMimeType(imagePath) ?? 'image/jpeg';
      final filePart = await http.MultipartFile.fromPath(
        'image',
        imagePath,
        contentType: MediaType.parse(mimeType),
      );
      request.files.add(filePart);

      print('[INCIDENT-REQUEST] Enviando incidencia...');
      print('Headers: ${request.headers}');
      print('Incident JSON: $incidentJson');
      print('Image Path: $imagePath ($mimeType)');

      final streamedResponse = await request.send();
      final response = await http.Response.fromStream(streamedResponse);

      print('[INCIDENT-RESPONSE] Status: ${response.statusCode}');
      print('Response Body: ${response.body}');

      if (response.statusCode == 201) {
        return right(Incident.fromJson(json.decode(response.body)));
      } else {
        return left(const TaskFailure.unableToFetch());
      }
    } catch (e, stack) {
      print('[INCIDENT-ERROR] $e');
      print(stack);
      return left(const TaskFailure.unexpected());
    }
  }

}
