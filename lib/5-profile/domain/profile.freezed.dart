// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Profile {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'userId') int get userId;@JsonKey(name: 'name', fromJson: profileNameFromJson, toJson: profileNameTojson) ProfileName get name;@JsonKey(name: 'lastname', fromJson: profileLastNameFromJson, toJson: profileLastNameToJson) ProfileLastName get lastname;@JsonKey(name: 'phoneNumber', fromJson: profilePhoneNumberFromJson, toJson: profilePhoneNumberToJson) ProfilePhoneNumber get phoneNumber;@JsonKey(name: 'profilePicture', fromJson: profilePictureFromJson, toJson: profilePictureToJson) ProfilePicture get profilePicture;@JsonKey(name: 'winegrowerId') int get winegrowerId;@JsonKey(name: 'status') String get status;
/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileCopyWith<Profile> get copyWith => _$ProfileCopyWithImpl<Profile>(this as Profile, _$identity);

  /// Serializes this Profile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Profile&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture)&&(identical(other.winegrowerId, winegrowerId) || other.winegrowerId == winegrowerId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,name,lastname,phoneNumber,profilePicture,winegrowerId,status);

@override
String toString() {
  return 'Profile(id: $id, userId: $userId, name: $name, lastname: $lastname, phoneNumber: $phoneNumber, profilePicture: $profilePicture, winegrowerId: $winegrowerId, status: $status)';
}


}

/// @nodoc
abstract mixin class $ProfileCopyWith<$Res>  {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) _then) = _$ProfileCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'userId') int userId,@JsonKey(name: 'name', fromJson: profileNameFromJson, toJson: profileNameTojson) ProfileName name,@JsonKey(name: 'lastname', fromJson: profileLastNameFromJson, toJson: profileLastNameToJson) ProfileLastName lastname,@JsonKey(name: 'phoneNumber', fromJson: profilePhoneNumberFromJson, toJson: profilePhoneNumberToJson) ProfilePhoneNumber phoneNumber,@JsonKey(name: 'profilePicture', fromJson: profilePictureFromJson, toJson: profilePictureToJson) ProfilePicture profilePicture,@JsonKey(name: 'winegrowerId') int winegrowerId,@JsonKey(name: 'status') String status
});




}
/// @nodoc
class _$ProfileCopyWithImpl<$Res>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._self, this._then);

  final Profile _self;
  final $Res Function(Profile) _then;

/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? lastname = null,Object? phoneNumber = null,Object? profilePicture = null,Object? winegrowerId = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as ProfileName,lastname: null == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as ProfileLastName,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as ProfilePhoneNumber,profilePicture: null == profilePicture ? _self.profilePicture : profilePicture // ignore: cast_nullable_to_non_nullable
as ProfilePicture,winegrowerId: null == winegrowerId ? _self.winegrowerId : winegrowerId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Profile].
extension ProfilePatterns on Profile {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Profile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Profile() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Profile value)  $default,){
final _that = this;
switch (_that) {
case _Profile():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Profile value)?  $default,){
final _that = this;
switch (_that) {
case _Profile() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'userId')  int userId, @JsonKey(name: 'name', fromJson: profileNameFromJson, toJson: profileNameTojson)  ProfileName name, @JsonKey(name: 'lastname', fromJson: profileLastNameFromJson, toJson: profileLastNameToJson)  ProfileLastName lastname, @JsonKey(name: 'phoneNumber', fromJson: profilePhoneNumberFromJson, toJson: profilePhoneNumberToJson)  ProfilePhoneNumber phoneNumber, @JsonKey(name: 'profilePicture', fromJson: profilePictureFromJson, toJson: profilePictureToJson)  ProfilePicture profilePicture, @JsonKey(name: 'winegrowerId')  int winegrowerId, @JsonKey(name: 'status')  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Profile() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.lastname,_that.phoneNumber,_that.profilePicture,_that.winegrowerId,_that.status);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'userId')  int userId, @JsonKey(name: 'name', fromJson: profileNameFromJson, toJson: profileNameTojson)  ProfileName name, @JsonKey(name: 'lastname', fromJson: profileLastNameFromJson, toJson: profileLastNameToJson)  ProfileLastName lastname, @JsonKey(name: 'phoneNumber', fromJson: profilePhoneNumberFromJson, toJson: profilePhoneNumberToJson)  ProfilePhoneNumber phoneNumber, @JsonKey(name: 'profilePicture', fromJson: profilePictureFromJson, toJson: profilePictureToJson)  ProfilePicture profilePicture, @JsonKey(name: 'winegrowerId')  int winegrowerId, @JsonKey(name: 'status')  String status)  $default,) {final _that = this;
switch (_that) {
case _Profile():
return $default(_that.id,_that.userId,_that.name,_that.lastname,_that.phoneNumber,_that.profilePicture,_that.winegrowerId,_that.status);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'userId')  int userId, @JsonKey(name: 'name', fromJson: profileNameFromJson, toJson: profileNameTojson)  ProfileName name, @JsonKey(name: 'lastname', fromJson: profileLastNameFromJson, toJson: profileLastNameToJson)  ProfileLastName lastname, @JsonKey(name: 'phoneNumber', fromJson: profilePhoneNumberFromJson, toJson: profilePhoneNumberToJson)  ProfilePhoneNumber phoneNumber, @JsonKey(name: 'profilePicture', fromJson: profilePictureFromJson, toJson: profilePictureToJson)  ProfilePicture profilePicture, @JsonKey(name: 'winegrowerId')  int winegrowerId, @JsonKey(name: 'status')  String status)?  $default,) {final _that = this;
switch (_that) {
case _Profile() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.lastname,_that.phoneNumber,_that.profilePicture,_that.winegrowerId,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Profile implements Profile {
  const _Profile({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'userId') required this.userId, @JsonKey(name: 'name', fromJson: profileNameFromJson, toJson: profileNameTojson) required this.name, @JsonKey(name: 'lastname', fromJson: profileLastNameFromJson, toJson: profileLastNameToJson) required this.lastname, @JsonKey(name: 'phoneNumber', fromJson: profilePhoneNumberFromJson, toJson: profilePhoneNumberToJson) required this.phoneNumber, @JsonKey(name: 'profilePicture', fromJson: profilePictureFromJson, toJson: profilePictureToJson) required this.profilePicture, @JsonKey(name: 'winegrowerId') required this.winegrowerId, @JsonKey(name: 'status') required this.status});
  factory _Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'userId') final  int userId;
@override@JsonKey(name: 'name', fromJson: profileNameFromJson, toJson: profileNameTojson) final  ProfileName name;
@override@JsonKey(name: 'lastname', fromJson: profileLastNameFromJson, toJson: profileLastNameToJson) final  ProfileLastName lastname;
@override@JsonKey(name: 'phoneNumber', fromJson: profilePhoneNumberFromJson, toJson: profilePhoneNumberToJson) final  ProfilePhoneNumber phoneNumber;
@override@JsonKey(name: 'profilePicture', fromJson: profilePictureFromJson, toJson: profilePictureToJson) final  ProfilePicture profilePicture;
@override@JsonKey(name: 'winegrowerId') final  int winegrowerId;
@override@JsonKey(name: 'status') final  String status;

/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileCopyWith<_Profile> get copyWith => __$ProfileCopyWithImpl<_Profile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Profile&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture)&&(identical(other.winegrowerId, winegrowerId) || other.winegrowerId == winegrowerId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,name,lastname,phoneNumber,profilePicture,winegrowerId,status);

@override
String toString() {
  return 'Profile(id: $id, userId: $userId, name: $name, lastname: $lastname, phoneNumber: $phoneNumber, profilePicture: $profilePicture, winegrowerId: $winegrowerId, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) _then) = __$ProfileCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'userId') int userId,@JsonKey(name: 'name', fromJson: profileNameFromJson, toJson: profileNameTojson) ProfileName name,@JsonKey(name: 'lastname', fromJson: profileLastNameFromJson, toJson: profileLastNameToJson) ProfileLastName lastname,@JsonKey(name: 'phoneNumber', fromJson: profilePhoneNumberFromJson, toJson: profilePhoneNumberToJson) ProfilePhoneNumber phoneNumber,@JsonKey(name: 'profilePicture', fromJson: profilePictureFromJson, toJson: profilePictureToJson) ProfilePicture profilePicture,@JsonKey(name: 'winegrowerId') int winegrowerId,@JsonKey(name: 'status') String status
});




}
/// @nodoc
class __$ProfileCopyWithImpl<$Res>
    implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(this._self, this._then);

  final _Profile _self;
  final $Res Function(_Profile) _then;

/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? lastname = null,Object? phoneNumber = null,Object? profilePicture = null,Object? winegrowerId = null,Object? status = null,}) {
  return _then(_Profile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as ProfileName,lastname: null == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as ProfileLastName,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as ProfilePhoneNumber,profilePicture: null == profilePicture ? _self.profilePicture : profilePicture // ignore: cast_nullable_to_non_nullable
as ProfilePicture,winegrowerId: null == winegrowerId ? _self.winegrowerId : winegrowerId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
