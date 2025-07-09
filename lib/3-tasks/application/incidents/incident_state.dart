import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/3-tasks/domain/incidents/incident.dart';
import 'package:myapp/3-tasks/domain/task_failure.dart';

part 'incident_state.freezed.dart';

@freezed
class IncidentState with _$IncidentState {
  const factory IncidentState.initial() = _Initial;
  const factory IncidentState.loading() = _Loading;
  const factory IncidentState.loadSuccess(List<Incident> incidents) = _LoadSuccess;
  const factory IncidentState.createSuccess(Incident incident) = _CreateSuccess;
  const factory IncidentState.operationInProgress() = _OperationInProgress;
  const factory IncidentState.failure(TaskFailure failure) = _Failure;
}
