import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/3_tasks/domain/task.dart';
import 'package:myapp/3_tasks/domain/task_failure.dart';

part 'task_state.freezed.dart';

@freezed
abstract class TaskState with _$TaskState {
  const factory TaskState.initial() = _Initial;
  const factory TaskState.loading() = _Loading;
  const factory TaskState.loadSuccess(List<Task> tasks) = _LoadSuccess;
  const factory TaskState.loadFailure(TaskFailure failure) = _LoadFailure;
}
