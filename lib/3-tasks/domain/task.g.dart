// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String,
  startDate: json['startDate'] as String,
  endDate: json['endDate'] as String,
  winegrowerId: (json['winegrowerId'] as num).toInt(),
  fieldWorkerName: json['fieldWorkerName'] as String,
  fieldWorkerId: (json['fieldWorkerId'] as num).toInt(),
  batchId: (json['batchId'] as num).toInt(),
  progressPercentage: (json['progressPercentage'] as num).toInt(),
  status: json['status'] as String,
  type: json['type'] as String,
  suppliesIds: (json['suppliesIds'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'winegrowerId': instance.winegrowerId,
      'fieldWorkerName': instance.fieldWorkerName,
      'fieldWorkerId': instance.fieldWorkerId,
      'batchId': instance.batchId,
      'progressPercentage': instance.progressPercentage,
      'status': instance.status,
      'type': instance.type,
      'suppliesIds': instance.suppliesIds,
    };
