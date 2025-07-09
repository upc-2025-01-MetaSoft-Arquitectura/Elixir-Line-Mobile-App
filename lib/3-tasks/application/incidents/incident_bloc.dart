import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/3-tasks/application/incidents/incident_event.dart';
import 'package:myapp/3-tasks/application/incidents/incident_state.dart';
import 'package:myapp/3-tasks/domain/incidents/i_incident_repository.dart';

@injectable
class IncidentBloc extends Bloc<IncidentEvent, IncidentState> {
  final IIncidentRepository _repository;

  IncidentBloc(this._repository) : super(IncidentState.initial()) {
    on<IncidentsFetched>(_onFetched);
    on<IncidentCreated>(_onCreated);
  }

  Future<void> _onFetched(
    IncidentsFetched event,
    Emitter<IncidentState> emit,
  ) async {
    emit(const IncidentState.loading());
    final result = await _repository.getIncidentsByTask(
      taskId: event.taskId,
      taskType: event.taskType,
    );
    emit(result.fold(
      (f) => IncidentState.failure(f),
      (incidents) => IncidentState.loadSuccess(incidents),
    ));
  }

  Future<void> _onCreated(
    IncidentCreated event,
    Emitter<IncidentState> emit,
  ) async {
    emit(const IncidentState.operationInProgress());
    final result = await _repository.createIncident(
      taskId: event.taskId,
      description: event.description,
      imagePath: event.imagePath,
    );
    emit(result.fold(
      (f) => IncidentState.failure(f),
      (incident) => IncidentState.createSuccess(incident),
    ));
  }
}
