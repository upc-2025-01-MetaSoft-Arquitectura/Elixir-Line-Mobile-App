import 'package:dartz/dartz.dart';
import 'package:myapp/3_tasks/domain/supplies/supply.dart';
import 'package:myapp/3_tasks/domain/task_failure.dart';

abstract class ISupplyRepository {
  Future<Either<TaskFailure, Supply>> getSupplyById(int id);
}
