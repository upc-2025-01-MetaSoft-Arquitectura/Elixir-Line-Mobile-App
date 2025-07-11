import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/4_map/domain/lat_lgn.dart';
part 'plot.freezed.dart';
part 'plot.g.dart';

@freezed
class Plot with _$Plot {
  const factory Plot({
    required int id,
    required String type,
    required List<LatLng> path,
    required String label,
    required int batchId,
    required int winegrowerId,
  }) = _Plot;

  factory Plot.fromJson(Map<String, dynamic> json) => _$PlotFromJson(json);
}
