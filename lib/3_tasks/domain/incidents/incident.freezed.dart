// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incident.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Incident _$IncidentFromJson(Map<String, dynamic> json) {
  return _Incident.fromJson(json);
}

/// @nodoc
mixin _$Incident {
  @JsonKey(name: 'incidentId')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'taskId')
  int get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'taskTitle')
  String get taskTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'batchId')
  int get batchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'winegrowerId')
  int get winegrowerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'taskType')
  String get taskType => throw _privateConstructorUsedError;
  @JsonKey(name: 'incidentDescription')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageUrl')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Incident to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Incident
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IncidentCopyWith<Incident> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncidentCopyWith<$Res> {
  factory $IncidentCopyWith(Incident value, $Res Function(Incident) then) =
      _$IncidentCopyWithImpl<$Res, Incident>;
  @useResult
  $Res call({
    @JsonKey(name: 'incidentId') int id,
    @JsonKey(name: 'taskId') int taskId,
    @JsonKey(name: 'taskTitle') String taskTitle,
    @JsonKey(name: 'batchId') int batchId,
    @JsonKey(name: 'winegrowerId') int winegrowerId,
    @JsonKey(name: 'taskType') String taskType,
    @JsonKey(name: 'incidentDescription') String description,
    @JsonKey(name: 'imageUrl') String imageUrl,
    @JsonKey(name: 'createdAt') String createdAt,
  });
}

/// @nodoc
class _$IncidentCopyWithImpl<$Res, $Val extends Incident>
    implements $IncidentCopyWith<$Res> {
  _$IncidentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Incident
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? taskTitle = null,
    Object? batchId = null,
    Object? winegrowerId = null,
    Object? taskType = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? createdAt = null,
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
            taskTitle: null == taskTitle
                ? _value.taskTitle
                : taskTitle // ignore: cast_nullable_to_non_nullable
                      as String,
            batchId: null == batchId
                ? _value.batchId
                : batchId // ignore: cast_nullable_to_non_nullable
                      as int,
            winegrowerId: null == winegrowerId
                ? _value.winegrowerId
                : winegrowerId // ignore: cast_nullable_to_non_nullable
                      as int,
            taskType: null == taskType
                ? _value.taskType
                : taskType // ignore: cast_nullable_to_non_nullable
                      as String,
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
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IncidentImplCopyWith<$Res>
    implements $IncidentCopyWith<$Res> {
  factory _$$IncidentImplCopyWith(
    _$IncidentImpl value,
    $Res Function(_$IncidentImpl) then,
  ) = __$$IncidentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'incidentId') int id,
    @JsonKey(name: 'taskId') int taskId,
    @JsonKey(name: 'taskTitle') String taskTitle,
    @JsonKey(name: 'batchId') int batchId,
    @JsonKey(name: 'winegrowerId') int winegrowerId,
    @JsonKey(name: 'taskType') String taskType,
    @JsonKey(name: 'incidentDescription') String description,
    @JsonKey(name: 'imageUrl') String imageUrl,
    @JsonKey(name: 'createdAt') String createdAt,
  });
}

/// @nodoc
class __$$IncidentImplCopyWithImpl<$Res>
    extends _$IncidentCopyWithImpl<$Res, _$IncidentImpl>
    implements _$$IncidentImplCopyWith<$Res> {
  __$$IncidentImplCopyWithImpl(
    _$IncidentImpl _value,
    $Res Function(_$IncidentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Incident
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? taskTitle = null,
    Object? batchId = null,
    Object? winegrowerId = null,
    Object? taskType = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$IncidentImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        taskId: null == taskId
            ? _value.taskId
            : taskId // ignore: cast_nullable_to_non_nullable
                  as int,
        taskTitle: null == taskTitle
            ? _value.taskTitle
            : taskTitle // ignore: cast_nullable_to_non_nullable
                  as String,
        batchId: null == batchId
            ? _value.batchId
            : batchId // ignore: cast_nullable_to_non_nullable
                  as int,
        winegrowerId: null == winegrowerId
            ? _value.winegrowerId
            : winegrowerId // ignore: cast_nullable_to_non_nullable
                  as int,
        taskType: null == taskType
            ? _value.taskType
            : taskType // ignore: cast_nullable_to_non_nullable
                  as String,
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
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IncidentImpl implements _Incident {
  const _$IncidentImpl({
    @JsonKey(name: 'incidentId') required this.id,
    @JsonKey(name: 'taskId') required this.taskId,
    @JsonKey(name: 'taskTitle') required this.taskTitle,
    @JsonKey(name: 'batchId') required this.batchId,
    @JsonKey(name: 'winegrowerId') required this.winegrowerId,
    @JsonKey(name: 'taskType') required this.taskType,
    @JsonKey(name: 'incidentDescription') required this.description,
    @JsonKey(name: 'imageUrl') required this.imageUrl,
    @JsonKey(name: 'createdAt') required this.createdAt,
  });

  factory _$IncidentImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncidentImplFromJson(json);

  @override
  @JsonKey(name: 'incidentId')
  final int id;
  @override
  @JsonKey(name: 'taskId')
  final int taskId;
  @override
  @JsonKey(name: 'taskTitle')
  final String taskTitle;
  @override
  @JsonKey(name: 'batchId')
  final int batchId;
  @override
  @JsonKey(name: 'winegrowerId')
  final int winegrowerId;
  @override
  @JsonKey(name: 'taskType')
  final String taskType;
  @override
  @JsonKey(name: 'incidentDescription')
  final String description;
  @override
  @JsonKey(name: 'imageUrl')
  final String imageUrl;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;

  @override
  String toString() {
    return 'Incident(id: $id, taskId: $taskId, taskTitle: $taskTitle, batchId: $batchId, winegrowerId: $winegrowerId, taskType: $taskType, description: $description, imageUrl: $imageUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncidentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.taskTitle, taskTitle) ||
                other.taskTitle == taskTitle) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.winegrowerId, winegrowerId) ||
                other.winegrowerId == winegrowerId) &&
            (identical(other.taskType, taskType) ||
                other.taskType == taskType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    taskId,
    taskTitle,
    batchId,
    winegrowerId,
    taskType,
    description,
    imageUrl,
    createdAt,
  );

  /// Create a copy of Incident
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncidentImplCopyWith<_$IncidentImpl> get copyWith =>
      __$$IncidentImplCopyWithImpl<_$IncidentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IncidentImplToJson(this);
  }
}

abstract class _Incident implements Incident {
  const factory _Incident({
    @JsonKey(name: 'incidentId') required final int id,
    @JsonKey(name: 'taskId') required final int taskId,
    @JsonKey(name: 'taskTitle') required final String taskTitle,
    @JsonKey(name: 'batchId') required final int batchId,
    @JsonKey(name: 'winegrowerId') required final int winegrowerId,
    @JsonKey(name: 'taskType') required final String taskType,
    @JsonKey(name: 'incidentDescription') required final String description,
    @JsonKey(name: 'imageUrl') required final String imageUrl,
    @JsonKey(name: 'createdAt') required final String createdAt,
  }) = _$IncidentImpl;

  factory _Incident.fromJson(Map<String, dynamic> json) =
      _$IncidentImpl.fromJson;

  @override
  @JsonKey(name: 'incidentId')
  int get id;
  @override
  @JsonKey(name: 'taskId')
  int get taskId;
  @override
  @JsonKey(name: 'taskTitle')
  String get taskTitle;
  @override
  @JsonKey(name: 'batchId')
  int get batchId;
  @override
  @JsonKey(name: 'winegrowerId')
  int get winegrowerId;
  @override
  @JsonKey(name: 'taskType')
  String get taskType;
  @override
  @JsonKey(name: 'incidentDescription')
  String get description;
  @override
  @JsonKey(name: 'imageUrl')
  String get imageUrl;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;

  /// Create a copy of Incident
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncidentImplCopyWith<_$IncidentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
