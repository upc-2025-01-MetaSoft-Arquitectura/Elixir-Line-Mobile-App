import 'package:freezed_annotation/freezed_annotation.dart';

part 'supply_event.freezed.dart';

@freezed
class SupplyEvent with _$SupplyEvent {
  const factory SupplyEvent.supplyFetched(List<int> supplyIds) = SupplyFetched;
}
