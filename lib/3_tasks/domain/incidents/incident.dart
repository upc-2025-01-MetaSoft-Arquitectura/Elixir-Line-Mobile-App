import 'package:freezed_annotation/freezed_annotation.dart';

part 'incident.freezed.dart';
part 'incident.g.dart';

@freezed
class Incident with _$Incident {
  const factory Incident({
    @JsonKey(name: 'incidentId') required int id,
    @JsonKey(name: 'taskId') required int taskId,
    @JsonKey(name: 'taskTitle') required String taskTitle,
    @JsonKey(name: 'batchId') required int batchId,
    @JsonKey(name: 'winegrowerId') required int winegrowerId,
    @JsonKey(name: 'taskType') required String taskType,
    @JsonKey(name: 'incidentDescription') required String description,
    @JsonKey(name: 'imageUrl') required String imageUrl,
    @JsonKey(name: 'createdAt') required String createdAt,
  }) = _Incident;

  factory Incident.fromJson(Map<String, dynamic> json) =>
      _$IncidentFromJson(json);
}
