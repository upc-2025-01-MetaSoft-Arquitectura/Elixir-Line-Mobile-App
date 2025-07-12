import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:myapp/3_tasks/domain/evidences/evidence.dart';
import 'package:myapp/3_tasks/domain/evidences/i_evidence_repository.dart';
import 'package:myapp/3_tasks/domain/task_failure.dart';
import 'package:myapp/shared/infrastructure/auth_storage.dart';
import 'package:myapp/shared/domain/api_constants.dart';
import 'package:mime/mime.dart';
import 'package:http_parser/http_parser.dart';

@LazySingleton(as: IEvidenceRepository)
class EvidenceRepository implements IEvidenceRepository {
  final AuthStorage _authStorage;

  EvidenceRepository(this._authStorage);

  @override
  Future<Either<TaskFailure, List<Evidence>>> getEvidencesForTask(
    int taskId,
  ) async {
    final token = await _authStorage.getToken();
    try {
      final response = await http.get(
        Uri.parse('${ApiConstants.baseUrl}/evidences/task/$taskId'),
        headers: {'Authorization': 'Bearer $token'},
      );

      if (response.statusCode == 200) {
        final body = json.decode(response.body);
        if (body is List) {
          final evidences =
              body.map((json) => Evidence.fromJson(json)).toList();
          return right(evidences);
        } else {
          return right([]);
        }
      } else if (response.statusCode == 404) {
        return right([]);
      } else {
        return left(const TaskFailure.unableToFetch());
      }
    } catch (e) {
      return left(const TaskFailure.unexpected());
    }
  }

  @override
  Future<Either<TaskFailure, Evidence>> createEvidence({
    required int taskId,
    required int progressPercentage,
    required String description,
    required String imagePath,
  }) async {
    final token = await _authStorage.getToken();
    try {
      final request = http.MultipartRequest(
        'POST',
        Uri.parse('${ApiConstants.baseUrl}/evidences'),
      );

      request.headers['Authorization'] = 'Bearer $token';

      final evidenceJson = json.encode({
        'taskId': taskId,
        'description': description,
        'progressPercentage': progressPercentage,
      });

      final evidencePart = http.MultipartFile.fromString(
        'evidence',
        evidenceJson,
        contentType: MediaType('application', 'json'),
      );
      request.files.add(evidencePart);

      final mimeType = lookupMimeType(imagePath) ?? 'image/jpeg';
      final filePart = await http.MultipartFile.fromPath(
        'image',
        imagePath,
        contentType: MediaType.parse(mimeType),
      );
      request.files.add(filePart);

      final streamedResponse = await request.send();
      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 201) {
        return right(Evidence.fromJson(json.decode(response.body)));
      } else {
        return left(const TaskFailure.unableToFetch());
      }
    } catch (e, stack) {
      return left(const TaskFailure.unexpected());
    }
  }
}
