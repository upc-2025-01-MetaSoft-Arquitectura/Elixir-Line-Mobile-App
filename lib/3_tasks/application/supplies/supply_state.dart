import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/3_tasks/domain/supplies/supply.dart';
import 'package:myapp/3_tasks/domain/task_failure.dart';

part 'supply_state.freezed.dart';

@freezed
class SupplyState with _$SupplyState {
  const factory SupplyState.initial() = _Initial;
  const factory SupplyState.loading() = _Loading;
  const factory SupplyState.loadSuccess(List<Supply> supplies) = _LoadSuccess;
  const factory SupplyState.failure(TaskFailure failure) = _Failure;
}
