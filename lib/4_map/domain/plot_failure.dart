import 'package:freezed_annotation/freezed_annotation.dart';

part 'plot_failure.freezed.dart';

@freezed
abstract class PlotFailure with _$PlotFailure {
  const factory PlotFailure.unableToFetch() = UnableToFetch;
  const factory PlotFailure.unexpected() = Unexpected;
}
