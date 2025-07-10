import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/3_tasks/domain/evidences/evidence.dart';
import 'package:myapp/3_tasks/domain/task_failure.dart';

part 'evidence_state.freezed.dart';

@freezed
class EvidenceState with _$EvidenceState {
  const factory EvidenceState.initial() = _Initial;
  const factory EvidenceState.loading() = _Loading;
  const factory EvidenceState.loadSuccess(List<Evidence> evidences) =
      _LoadSuccess;
  const factory EvidenceState.createSuccess(Evidence evidence) = _CreateSuccess;
  const factory EvidenceState.operationInProgress() = _OperationInProgress;
  const factory EvidenceState.failure(TaskFailure failure) = _Failure;
}
