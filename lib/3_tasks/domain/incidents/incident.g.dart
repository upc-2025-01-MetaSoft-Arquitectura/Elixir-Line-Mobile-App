// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IncidentImpl _$$IncidentImplFromJson(Map<String, dynamic> json) =>
    _$IncidentImpl(
      id: (json['incidentId'] as num).toInt(),
      taskId: (json['taskId'] as num).toInt(),
      taskTitle: json['taskTitle'] as String,
      batchId: (json['batchId'] as num).toInt(),
      winegrowerId: (json['winegrowerId'] as num).toInt(),
      taskType: json['taskType'] as String,
      description: json['incidentDescription'] as String,
      imageUrl: json['imageUrl'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$IncidentImplToJson(_$IncidentImpl instance) =>
    <String, dynamic>{
      'incidentId': instance.id,
      'taskId': instance.taskId,
      'taskTitle': instance.taskTitle,
      'batchId': instance.batchId,
      'winegrowerId': instance.winegrowerId,
      'taskType': instance.taskType,
      'incidentDescription': instance.description,
      'imageUrl': instance.imageUrl,
      'createdAt': instance.createdAt,
    };
