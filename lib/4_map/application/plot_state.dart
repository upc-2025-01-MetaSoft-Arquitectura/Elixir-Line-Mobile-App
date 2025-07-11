import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/4_map/domain/plot.dart';
import 'package:myapp/4_map/domain/plot_failure.dart';

part 'plot_state.freezed.dart';

@freezed
abstract class PlotState with _$PlotState {
  const factory PlotState.initial() = _Initial;
  const factory PlotState.loading() = _Loading;
  const factory PlotState.loadSuccess(List<Plot> plots) = _LoadSuccess;
  const factory PlotState.failure(PlotFailure failure) = _Failure;
}
