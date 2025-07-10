// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evidence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EvidenceImpl _$$EvidenceImplFromJson(Map<String, dynamic> json) =>
    _$EvidenceImpl(
      id: (json['id'] as num).toInt(),
      taskId: (json['taskId'] as num).toInt(),
      progressPercentage: (json['progressPercentage'] as num).toInt(),
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$EvidenceImplToJson(_$EvidenceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'taskId': instance.taskId,
      'progressPercentage': instance.progressPercentage,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
