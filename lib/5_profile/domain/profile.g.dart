// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      name: profileNameFromJson(json['name'] as String),
      lastname: profileLastNameFromJson(json['lastname'] as String),
      phoneNumber: profilePhoneNumberFromJson(json['phoneNumber'] as String),
      profilePicture: profilePictureFromJson(json['profilePicture'] as String),
      winegrowerId: (json['winegrowerId'] as num).toInt(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': profileNameTojson(instance.name),
      'lastname': profileLastNameToJson(instance.lastname),
      'phoneNumber': profilePhoneNumberToJson(instance.phoneNumber),
      'profilePicture': profilePictureToJson(instance.profilePicture),
      'winegrowerId': instance.winegrowerId,
      'status': instance.status,
    };
