import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_event.freezed.dart';

@freezed
abstract class TaskEvent with _$TaskEvent {
  const factory TaskEvent.loaded() = TasksLoaded;
}
