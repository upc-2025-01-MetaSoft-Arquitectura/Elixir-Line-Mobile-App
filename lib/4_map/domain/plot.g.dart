// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlotImpl _$$PlotImplFromJson(Map<String, dynamic> json) => _$PlotImpl(
  id: (json['id'] as num).toInt(),
  type: json['type'] as String,
  path: (json['path'] as List<dynamic>)
      .map((e) => LatLng.fromJson(e as Map<String, dynamic>))
      .toList(),
  label: json['label'] as String,
  batchId: (json['batchId'] as num).toInt(),
  winegrowerId: (json['winegrowerId'] as num).toInt(),
);

Map<String, dynamic> _$$PlotImplToJson(_$PlotImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'path': instance.path,
      'label': instance.label,
      'batchId': instance.batchId,
      'winegrowerId': instance.winegrowerId,
    };
