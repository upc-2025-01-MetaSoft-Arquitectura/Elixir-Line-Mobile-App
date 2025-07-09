import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
abstract class Task with _$Task {
  const factory Task({
    required int id,
    required String title,
    required String description,
    @JsonKey(name: 'startDate') required String startDate,
    @JsonKey(name: 'endDate') required String endDate,
    @JsonKey(name: 'winegrowerId') required int winegrowerId,
    @JsonKey(name: 'fieldWorkerName') required String fieldWorkerName,
    @JsonKey(name: 'fieldWorkerId') required int fieldWorkerId,
    @JsonKey(name: 'batchId') required int batchId,
    @JsonKey(name: 'progressPercentage') required int progressPercentage,
    required String status,
    required String type,
    @JsonKey(name: 'suppliesIds') required List<int> suppliesIds,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}