import 'package:freezed_annotation/freezed_annotation.dart';
part 'lat_lgn.g.dart';

@JsonSerializable()
class LatLng {
  final double lat;
  final double lng;

  LatLng(this.lat, this.lng);

  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);
  Map<String, dynamic> toJson() => _$LatLngToJson(this);
}
