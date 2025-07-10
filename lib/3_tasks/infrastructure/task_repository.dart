import 'dart:convert';
import 'package:dartz/dartz.dart' as dartz;
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:myapp/3_tasks/domain/i_task_repository.dart';
import 'package:myapp/3_tasks/domain/task_failure.dart';
import 'package:myapp/3_tasks/domain/task.dart';
import 'package:myapp/shared/infrastructure/auth_storage.dart';
import 'package:myapp/shared/domain/api_constants.dart';

@LazySingleton(as: ITaskRepository)
class TaskRepository implements ITaskRepository {
  final AuthStorage _authStorage = AuthStorage();

  @override
  Future<dartz.Either<TaskFailure, List<Task>>> getTasksForFieldWorker({
    required int winegrowerId,
    required int fieldWorkerId,
  }) async {
    final token = await _authStorage.getToken();

    try {
      final response = await http.get(
        Uri.parse(
          '${ApiConstants.baseUrl}/tasks/winegrower/$winegrowerId/fieldworker/$fieldWorkerId',
        ),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        final tasks = data.map((json) => Task.fromJson(json)).toList();
        return dartz.right(tasks);
      } else {
        return dartz.left(const TaskFailure.unableToFetch());
      }
    } catch (e) {
      return dartz.left(const TaskFailure.unexpected());
    }
  }
}
