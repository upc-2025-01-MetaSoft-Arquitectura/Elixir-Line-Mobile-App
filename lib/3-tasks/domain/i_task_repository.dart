import 'package:dartz/dartz.dart' as dartz; 
import 'package:myapp/3-tasks/domain/task_failure.dart';
import 'package:myapp/3-tasks/domain/task.dart'; 

abstract class ITaskRepository {
  Future<dartz.Either<TaskFailure, List<Task>>> getTasksForWinegrower(int winegrowerId);
  Future<dartz.Either<TaskFailure, List<Task>>> getTasksForFieldWorker(int fieldWorkerId);
}