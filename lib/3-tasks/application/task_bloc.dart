import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/3-tasks/application/task_event.dart';
import 'package:myapp/3-tasks/application/task_state.dart';
import 'package:myapp/3-tasks/domain/i_task_repository.dart';
import 'package:myapp/3-tasks/domain/task_failure.dart';
import 'package:myapp/shared/infrastructure/auth_storage.dart';

@injectable
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final ITaskRepository _taskRepository;
  final AuthStorage _authStorage;

  TaskBloc(this._taskRepository, this._authStorage) : super(TaskState.initial()) {
    on<TasksLoaded>((event, emit) async {
      emit(const TaskState.loading());
      
      final fieldWorkerId = await _authStorage.getFieldWorkerId();
      if (fieldWorkerId == null) {
        emit(const TaskState.loadFailure(TaskFailure.unauthenticated()));
        return;
      }

      final result = await _taskRepository.getTasksForFieldWorker(fieldWorkerId);
      result.fold(
        (failure) => emit(TaskState.loadFailure(failure)),
        (tasks) => emit(TaskState.loadSuccess(tasks)),
      );
    });
  }
}