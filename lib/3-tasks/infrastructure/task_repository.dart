import 'dart:convert';
import 'package:dartz/dartz.dart' as dartz; 
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:myapp/3-tasks/domain/i_task_repository.dart';
import 'package:myapp/3-tasks/domain/task_failure.dart';
import 'package:myapp/3-tasks/domain/task.dart';
import 'package:myapp/shared/infrastructure/auth_storage.dart';
import 'package:myapp/shared/domain/api_constants.dart';

@LazySingleton(as: ITaskRepository)
class TaskRepository implements ITaskRepository {
  final AuthStorage _authStorage = AuthStorage();

  @override
  Future<dartz.Either<TaskFailure, List<Task>>> getTasksForWinegrower(int winegrowerId) async {
    final token = await _authStorage.getToken();
    print('ID del viticultor: $winegrowerId');


    try {
      final response = await http.get(
        Uri.parse('${ApiConstants.baseUrl}/tasks/winegrower/$winegrowerId'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      print('Respuesta de la API: ${response.statusCode}'); 
      print('Cuerpo de la respuesta: ${response.body}'); 

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        final tasks = data.map((json) => Task.fromJson(json)).toList();
        return dartz.right(tasks); 
      } else {
        print('Error al obtener tareas: ${response.statusCode}');
        return dartz.left(const TaskFailure.unableToFetch()); 
      }
    } catch (e) {
      print('Error inesperado: $e');
      return dartz.left(const TaskFailure.unexpected());
    }
  }

  @override
  Future<dartz.Either<TaskFailure, List<Task>>> getTasksForFieldWorker(int fieldWorkerId) async {
    final allTasks = await getTasksForWinegrower(await _authStorage.getWinegrowerId() ?? 0);
    return allTasks.fold(
      (failure) => dartz.left(failure), 
      (tasks) {
        final filteredTasks = tasks.where((task) => task.fieldWorkerId == fieldWorkerId).toList();
        return dartz.right(filteredTasks);
      },
    );
  }
}