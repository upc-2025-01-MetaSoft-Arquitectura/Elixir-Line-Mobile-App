import 'package:dartz/dartz.dart';
import 'package:myapp/3_tasks/domain/incidents/incident.dart';
import 'package:myapp/3_tasks/domain/task_failure.dart';

abstract class IIncidentRepository {
  Future<Either<TaskFailure, List<Incident>>> getIncidentsByTask({
    required int taskId,
    required String taskType,
  });

  Future<Either<TaskFailure, Incident>> createIncident({
    required int taskId,
    required String description,
    required String imagePath,
  });
}
