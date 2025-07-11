import 'package:freezed_annotation/freezed_annotation.dart';

part 'plot_event.freezed.dart';

@freezed
abstract class PlotEvent with _$PlotEvent {
  const factory PlotEvent.fetched() = PlotFetched;
}
