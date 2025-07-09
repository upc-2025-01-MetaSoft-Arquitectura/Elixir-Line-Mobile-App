import 'package:dartz/dartz.dart';
import 'package:myapp/3-tasks/domain/evidences/evidence.dart';
import 'package:myapp/3-tasks/domain/task_failure.dart';

abstract class IEvidenceRepository {
  Future<Either<TaskFailure, List<Evidence>>> getEvidencesForTask(int taskId);
  Future<Either<TaskFailure, Evidence>> createEvidence({
    required int taskId,
    required int progressPercentage,
    required String description,
    required String imagePath,
  });
}