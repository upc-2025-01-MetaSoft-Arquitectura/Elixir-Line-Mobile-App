import 'package:dartz/dartz.dart' as dartz;
import 'package:myapp/3_tasks/domain/task_failure.dart';
import 'package:myapp/3_tasks/domain/task.dart';

abstract class ITaskRepository {
  Future<dartz.Either<TaskFailure, List<Task>>> getTasksForFieldWorker({
    required int winegrowerId,
    required int fieldWorkerId,
  });
}
