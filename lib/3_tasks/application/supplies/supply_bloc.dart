import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/3_tasks/domain/supplies/i_supply_repository.dart';
import 'package:myapp/3_tasks/domain/supplies/supply.dart';
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
      final result = await _repository.getSupplyById(id);
      result.fold(
        (f) => emit(SupplyState.failure(f)),
        (supply) => supplies.add(supply),
      );
    }

    emit(SupplyState.loadSuccess(supplies));
  }
}
