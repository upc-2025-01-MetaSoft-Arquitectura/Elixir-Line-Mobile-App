import 'package:freezed_annotation/freezed_annotation.dart';

part 'evidence_event.freezed.dart';

@freezed
class EvidenceEvent with _$EvidenceEvent {
  const factory EvidenceEvent.evidencesFetched(int taskId) = EvidencesFetched;
  const factory EvidenceEvent.evidenceCreated({
    required int taskId,
    required int progressPercentage,
    required String description,
    required String imagePath,
  }) = EvidenceCreated;
}
