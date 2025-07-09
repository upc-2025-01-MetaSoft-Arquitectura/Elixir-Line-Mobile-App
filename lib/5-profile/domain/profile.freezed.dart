// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'name',
    fromJson: profileNameFromJson,
    toJson: profileNameTojson,
  )
  ProfileName get name => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'lastname',
    fromJson: profileLastNameFromJson,
    toJson: profileLastNameToJson,
  )
  ProfileLastName get lastname => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'phoneNumber',
    fromJson: profilePhoneNumberFromJson,
    toJson: profilePhoneNumberToJson,
  )
  ProfilePhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'profilePicture',
    fromJson: profilePictureFromJson,
    toJson: profilePictureToJson,
  )
  ProfilePicture get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'winegrowerId')
  int get winegrowerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  /// Serializes this Profile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'userId') int userId,
    @JsonKey(
      name: 'name',
      fromJson: profileNameFromJson,
      toJson: profileNameTojson,
    )
    ProfileName name,
    @JsonKey(
      name: 'lastname',
      fromJson: profileLastNameFromJson,
      toJson: profileLastNameToJson,
    )
    ProfileLastName lastname,
    @JsonKey(
      name: 'phoneNumber',
      fromJson: profilePhoneNumberFromJson,
      toJson: profilePhoneNumberToJson,
    )
    ProfilePhoneNumber phoneNumber,
    @JsonKey(
      name: 'profilePicture',
      fromJson: profilePictureFromJson,
      toJson: profilePictureToJson,
    )
    ProfilePicture profilePicture,
    @JsonKey(name: 'winegrowerId') int winegrowerId,
    @JsonKey(name: 'status') String status,
  });
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? lastname = null,
    Object? phoneNumber = null,
    Object? profilePicture = null,
    Object? winegrowerId = null,
    Object? status = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as ProfileName,
            lastname: null == lastname
                ? _value.lastname
                : lastname // ignore: cast_nullable_to_non_nullable
                      as ProfileLastName,
            phoneNumber: null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as ProfilePhoneNumber,
            profilePicture: null == profilePicture
                ? _value.profilePicture
                : profilePicture // ignore: cast_nullable_to_non_nullable
                      as ProfilePicture,
            winegrowerId: null == winegrowerId
                ? _value.winegrowerId
                : winegrowerId // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
    _$ProfileImpl value,
    $Res Function(_$ProfileImpl) then,
  ) = __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'userId') int userId,
    @JsonKey(
      name: 'name',
      fromJson: profileNameFromJson,
      toJson: profileNameTojson,
    )
    ProfileName name,
    @JsonKey(
      name: 'lastname',
      fromJson: profileLastNameFromJson,
      toJson: profileLastNameToJson,
    )
    ProfileLastName lastname,
    @JsonKey(
      name: 'phoneNumber',
      fromJson: profilePhoneNumberFromJson,
      toJson: profilePhoneNumberToJson,
    )
    ProfilePhoneNumber phoneNumber,
    @JsonKey(
      name: 'profilePicture',
      fromJson: profilePictureFromJson,
      toJson: profilePictureToJson,
    )
    ProfilePicture profilePicture,
    @JsonKey(name: 'winegrowerId') int winegrowerId,
    @JsonKey(name: 'status') String status,
  });
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
    _$ProfileImpl _value,
    $Res Function(_$ProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? lastname = null,
    Object? phoneNumber = null,
    Object? profilePicture = null,
    Object? winegrowerId = null,
    Object? status = null,
  }) {
    return _then(
      _$ProfileImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as ProfileName,
        lastname: null == lastname
            ? _value.lastname
            : lastname // ignore: cast_nullable_to_non_nullable
                  as ProfileLastName,
        phoneNumber: null == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as ProfilePhoneNumber,
        profilePicture: null == profilePicture
            ? _value.profilePicture
            : profilePicture // ignore: cast_nullable_to_non_nullable
                  as ProfilePicture,
        winegrowerId: null == winegrowerId
            ? _value.winegrowerId
            : winegrowerId // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImpl implements _Profile {
  const _$ProfileImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'userId') required this.userId,
    @JsonKey(
      name: 'name',
      fromJson: profileNameFromJson,
      toJson: profileNameTojson,
    )
    required this.name,
    @JsonKey(
      name: 'lastname',
      fromJson: profileLastNameFromJson,
      toJson: profileLastNameToJson,
    )
    required this.lastname,
    @JsonKey(
      name: 'phoneNumber',
      fromJson: profilePhoneNumberFromJson,
      toJson: profilePhoneNumberToJson,
    )
    required this.phoneNumber,
    @JsonKey(
      name: 'profilePicture',
      fromJson: profilePictureFromJson,
      toJson: profilePictureToJson,
    )
    required this.profilePicture,
    @JsonKey(name: 'winegrowerId') required this.winegrowerId,
    @JsonKey(name: 'status') required this.status,
  });

  factory _$ProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'userId')
  final int userId;
  @override
  @JsonKey(
    name: 'name',
    fromJson: profileNameFromJson,
    toJson: profileNameTojson,
  )
  final ProfileName name;
  @override
  @JsonKey(
    name: 'lastname',
    fromJson: profileLastNameFromJson,
    toJson: profileLastNameToJson,
  )
  final ProfileLastName lastname;
  @override
  @JsonKey(
    name: 'phoneNumber',
    fromJson: profilePhoneNumberFromJson,
    toJson: profilePhoneNumberToJson,
  )
  final ProfilePhoneNumber phoneNumber;
  @override
  @JsonKey(
    name: 'profilePicture',
    fromJson: profilePictureFromJson,
    toJson: profilePictureToJson,
  )
  final ProfilePicture profilePicture;
  @override
  @JsonKey(name: 'winegrowerId')
  final int winegrowerId;
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString() {
    return 'Profile(id: $id, userId: $userId, name: $name, lastname: $lastname, phoneNumber: $phoneNumber, profilePicture: $profilePicture, winegrowerId: $winegrowerId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.winegrowerId, winegrowerId) ||
                other.winegrowerId == winegrowerId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    name,
    lastname,
    phoneNumber,
    profilePicture,
    winegrowerId,
    status,
  );

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImplToJson(this);
  }
}

abstract class _Profile implements Profile {
  const factory _Profile({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'userId') required final int userId,
    @JsonKey(
      name: 'name',
      fromJson: profileNameFromJson,
      toJson: profileNameTojson,
    )
    required final ProfileName name,
    @JsonKey(
      name: 'lastname',
      fromJson: profileLastNameFromJson,
      toJson: profileLastNameToJson,
    )
    required final ProfileLastName lastname,
    @JsonKey(
      name: 'phoneNumber',
      fromJson: profilePhoneNumberFromJson,
      toJson: profilePhoneNumberToJson,
    )
    required final ProfilePhoneNumber phoneNumber,
    @JsonKey(
      name: 'profilePicture',
      fromJson: profilePictureFromJson,
      toJson: profilePictureToJson,
    )
    required final ProfilePicture profilePicture,
    @JsonKey(name: 'winegrowerId') required final int winegrowerId,
    @JsonKey(name: 'status') required final String status,
  }) = _$ProfileImpl;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$ProfileImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'userId')
  int get userId;
  @override
  @JsonKey(
    name: 'name',
    fromJson: profileNameFromJson,
    toJson: profileNameTojson,
  )
  ProfileName get name;
  @override
  @JsonKey(
    name: 'lastname',
    fromJson: profileLastNameFromJson,
    toJson: profileLastNameToJson,
  )
  ProfileLastName get lastname;
  @override
  @JsonKey(
    name: 'phoneNumber',
    fromJson: profilePhoneNumberFromJson,
    toJson: profilePhoneNumberToJson,
  )
  ProfilePhoneNumber get phoneNumber;
  @override
  @JsonKey(
    name: 'profilePicture',
    fromJson: profilePictureFromJson,
    toJson: profilePictureToJson,
  )
  ProfilePicture get profilePicture;
  @override
  @JsonKey(name: 'winegrowerId')
  int get winegrowerId;
  @override
  @JsonKey(name: 'status')
  String get status;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
