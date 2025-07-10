import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/3_tasks/application/evidences/evidence_event.dart';
import 'package:myapp/3_tasks/application/evidences/evidence_state.dart';
import 'package:myapp/3_tasks/domain/evidences/i_evidence_repository.dart';

@injectable
class EvidenceBloc extends Bloc<EvidenceEvent, EvidenceState> {
  final IEvidenceRepository _repository;

  EvidenceBloc(this._repository) : super(EvidenceState.initial()) {
    on<EvidencesFetched>(_onFetched);
    on<EvidenceCreated>(_onCreated);
  }

  Future<void> _onFetched(
    EvidencesFetched event,
    Emitter<EvidenceState> emit,
  ) async {
    emit(const EvidenceState.loading());
    final result = await _repository.getEvidencesForTask(event.taskId);
    emit(
      result.fold(
        (f) => EvidenceState.failure(f),
        (evidences) => EvidenceState.loadSuccess(evidences),
      ),
    );
  }

  Future<void> _onCreated(
    EvidenceCreated event,
    Emitter<EvidenceState> emit,
  ) async {
    emit(const EvidenceState.operationInProgress());
    final result = await _repository.createEvidence(
      taskId: event.taskId,
      progressPercentage: event.progressPercentage,
      description: event.description,
      imagePath: event.imagePath,
    );
    emit(
      result.fold(
        (f) => EvidenceState.failure(f),
        (evidence) => EvidenceState.createSuccess(evidence),
      ),
    );
  }
}
