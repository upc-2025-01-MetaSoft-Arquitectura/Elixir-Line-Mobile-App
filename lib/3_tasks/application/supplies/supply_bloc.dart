import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/3_tasks/domain/supplies/i_supply_repository.dart';
import 'package:myapp/3_tasks/domain/supplies/supply.dart';
import 'package:myapp/3_tasks/domain/task_failure.dart';
import 'supply_event.dart';
import 'supply_state.dart';

@injectable
class SupplyBloc extends Bloc<SupplyEvent, SupplyState> {
  final ISupplyRepository _repository;

  SupplyBloc(this._repository) : super(const SupplyState.initial()) {
    on<SupplyFetched>(_onFetched);
  }

  Future<void> _onFetched(
    SupplyFetched event,
    Emitter<SupplyState> emit,
  ) async {
    emit(const SupplyState.loading());
    final supplies = <Supply>[];

    for (final id in event.supplyIds) {
      try {
        final result = await _repository.getSupplyById(id);
        result.fold(
          (f) => emit(SupplyState.failure(f)),
          (supply) => supplies.add(supply),
        );
      } catch (e) {
        emit(SupplyState.failure(const TaskFailure.unexpected()));
      }
    }

    emit(SupplyState.loadSuccess(supplies));
  }
}
