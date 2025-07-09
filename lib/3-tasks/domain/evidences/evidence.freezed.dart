// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evidence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Evidence _$EvidenceFromJson(Map<String, dynamic> json) {
  return _Evidence.fromJson(json);
}

/// @nodoc
mixin _$Evidence {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'taskId')
  int get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'progressPercentage')
  int get progressPercentage => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageUrl')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Evidence to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Evidence
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EvidenceCopyWith<Evidence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvidenceCopyWith<$Res> {
  factory $EvidenceCopyWith(Evidence value, $Res Function(Evidence) then) =
      _$EvidenceCopyWithImpl<$Res, Evidence>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'taskId') int taskId,
    @JsonKey(name: 'progressPercentage') int progressPercentage,
    String description,
    @JsonKey(name: 'imageUrl') String imageUrl,
    @JsonKey(name: 'createdAt') DateTime createdAt,
    @JsonKey(name: 'updatedAt') DateTime updatedAt,
  });
}

/// @nodoc
class _$EvidenceCopyWithImpl<$Res, $Val extends Evidence>
    implements $EvidenceCopyWith<$Res> {
  _$EvidenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Evidence
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? progressPercentage = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            taskId: null == taskId
                ? _value.taskId
                : taskId // ignore: cast_nullable_to_non_nullable
                      as int,
            progressPercentage: null == progressPercentage
                ? _value.progressPercentage
                : progressPercentage // ignore: cast_nullable_to_non_nullable
                      as int,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EvidenceImplCopyWith<$Res>
    implements $EvidenceCopyWith<$Res> {
  factory _$$EvidenceImplCopyWith(
    _$EvidenceImpl value,
    $Res Function(_$EvidenceImpl) then,
  ) = __$$EvidenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'taskId') int taskId,
    @JsonKey(name: 'progressPercentage') int progressPercentage,
    String description,
    @JsonKey(name: 'imageUrl') String imageUrl,
    @JsonKey(name: 'createdAt') DateTime createdAt,
    @JsonKey(name: 'updatedAt') DateTime updatedAt,
  });
}

/// @nodoc
class __$$EvidenceImplCopyWithImpl<$Res>
    extends _$EvidenceCopyWithImpl<$Res, _$EvidenceImpl>
    implements _$$EvidenceImplCopyWith<$Res> {
  __$$EvidenceImplCopyWithImpl(
    _$EvidenceImpl _value,
    $Res Function(_$EvidenceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Evidence
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? progressPercentage = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$EvidenceImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        taskId: null == taskId
            ? _value.taskId
            : taskId // ignore: cast_nullable_to_non_nullable
                  as int,
        progressPercentage: null == progressPercentage
            ? _value.progressPercentage
            : progressPercentage // ignore: cast_nullable_to_non_nullable
                  as int,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EvidenceImpl implements _Evidence {
  const _$EvidenceImpl({
    required this.id,
    @JsonKey(name: 'taskId') required this.taskId,
    @JsonKey(name: 'progressPercentage') required this.progressPercentage,
    required this.description,
    @JsonKey(name: 'imageUrl') required this.imageUrl,
    @JsonKey(name: 'createdAt') required this.createdAt,
    @JsonKey(name: 'updatedAt') required this.updatedAt,
  });

  factory _$EvidenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvidenceImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'taskId')
  final int taskId;
  @override
  @JsonKey(name: 'progressPercentage')
  final int progressPercentage;
  @override
  final String description;
  @override
  @JsonKey(name: 'imageUrl')
  final String imageUrl;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Evidence(id: $id, taskId: $taskId, progressPercentage: $progressPercentage, description: $description, imageUrl: $imageUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvidenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.progressPercentage, progressPercentage) ||
                other.progressPercentage == progressPercentage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    taskId,
    progressPercentage,
    description,
    imageUrl,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Evidence
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EvidenceImplCopyWith<_$EvidenceImpl> get copyWith =>
      __$$EvidenceImplCopyWithImpl<_$EvidenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvidenceImplToJson(this);
  }
}

abstract class _Evidence implements Evidence {
  const factory _Evidence({
    required final int id,
    @JsonKey(name: 'taskId') required final int taskId,
    @JsonKey(name: 'progressPercentage') required final int progressPercentage,
    required final String description,
    @JsonKey(name: 'imageUrl') required final String imageUrl,
    @JsonKey(name: 'createdAt') required final DateTime createdAt,
    @JsonKey(name: 'updatedAt') required final DateTime updatedAt,
  }) = _$EvidenceImpl;

  factory _Evidence.fromJson(Map<String, dynamic> json) =
      _$EvidenceImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'taskId')
  int get taskId;
  @override
  @JsonKey(name: 'progressPercentage')
  int get progressPercentage;
  @override
  String get description;
  @override
  @JsonKey(name: 'imageUrl')
  String get imageUrl;
  @override
  @JsonKey(name: 'createdAt')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  DateTime get updatedAt;

  /// Create a copy of Evidence
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EvidenceImplCopyWith<_$EvidenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
