import 'package:freezed_annotation/freezed_annotation.dart';

part 'incident_event.freezed.dart';

@freezed
class IncidentEvent with _$IncidentEvent {
  const factory IncidentEvent.incidentsFetched({
    required int taskId,
    required String taskType,
  }) = IncidentsFetched;

  const factory IncidentEvent.incidentCreated({
    required int taskId,
    required String description,
    required String imagePath,
  }) = IncidentCreated;
}
