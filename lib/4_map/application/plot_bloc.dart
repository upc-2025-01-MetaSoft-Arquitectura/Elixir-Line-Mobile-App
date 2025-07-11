// lib/5_map/application/plot_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/4_map/application/plot_event.dart';
import 'package:myapp/4_map/application/plot_state.dart';
import 'package:myapp/4_map/infrastructure/plot_repository.dart';

@injectable
class PlotBloc extends Bloc<PlotEvent, PlotState> {
  final PlotRepository _repository;

  PlotBloc(this._repository) : super(const PlotState.initial()) {
    on<PlotFetched>(_onFetched);
  }

  Future<void> _onFetched(PlotFetched event, Emitter<PlotState> emit) async {
    emit(const PlotState.loading());
    final failureOrPlots = await _repository.getPlots();
    emit(
      failureOrPlots.fold(
        (failure) => PlotState.failure(failure),
        (plots) => PlotState.loadSuccess(plots),
      ),
    );
  }
}
