import 'package:freezed_annotation/freezed_annotation.dart';

part 'supply.freezed.dart';
part 'supply.g.dart';

@freezed
class Supply with _$Supply {
  const factory Supply({
    required int id,
    required String name,
    required String description,
    required int quantity,
    required String unit,
    required String image,
  }) = _Supply;

  factory Supply.fromJson(Map<String, dynamic> json) => _$SupplyFromJson(json);
}
