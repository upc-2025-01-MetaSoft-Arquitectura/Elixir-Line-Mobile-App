// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupplyImpl _$$SupplyImplFromJson(Map<String, dynamic> json) => _$SupplyImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String,
  quantity: (json['quantity'] as num).toInt(),
  unit: json['unit'] as String,
  image: json['image'] as String,
);

Map<String, dynamic> _$$SupplyImplToJson(_$SupplyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'image': instance.image,
    };
