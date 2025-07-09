// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incident_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$IncidentEvent {
  int get taskId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId, String taskType) incidentsFetched,
    required TResult Function(int taskId, String description, String imagePath)
    incidentCreated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId, String taskType)? incidentsFetched,
    TResult? Function(int taskId, String description, String imagePath)?
    incidentCreated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId, String taskType)? incidentsFetched,
    TResult Function(int taskId, String description, String imagePath)?
    incidentCreated,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncidentsFetched value) incidentsFetched,
    required TResult Function(IncidentCreated value) incidentCreated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IncidentsFetched value)? incidentsFetched,
    TResult? Function(IncidentCreated value)? incidentCreated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncidentsFetched value)? incidentsFetched,
    TResult Function(IncidentCreated value)? incidentCreated,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of IncidentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IncidentEventCopyWith<IncidentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncidentEventCopyWith<$Res> {
  factory $IncidentEventCopyWith(
    IncidentEvent value,
    $Res Function(IncidentEvent) then,
  ) = _$IncidentEventCopyWithImpl<$Res, IncidentEvent>;
  @useResult
  $Res call({int taskId});
}

/// @nodoc
class _$IncidentEventCopyWithImpl<$Res, $Val extends IncidentEvent>
    implements $IncidentEventCopyWith<$Res> {
  _$IncidentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IncidentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? taskId = null}) {
    return _then(
      _value.copyWith(
            taskId: null == taskId
                ? _value.taskId
                : taskId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IncidentsFetchedImplCopyWith<$Res>
    implements $IncidentEventCopyWith<$Res> {
  factory _$$IncidentsFetchedImplCopyWith(
    _$IncidentsFetchedImpl value,
    $Res Function(_$IncidentsFetchedImpl) then,
  ) = __$$IncidentsFetchedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int taskId, String taskType});
}

/// @nodoc
class __$$IncidentsFetchedImplCopyWithImpl<$Res>
    extends _$IncidentEventCopyWithImpl<$Res, _$IncidentsFetchedImpl>
    implements _$$IncidentsFetchedImplCopyWith<$Res> {
  __$$IncidentsFetchedImplCopyWithImpl(
    _$IncidentsFetchedImpl _value,
    $Res Function(_$IncidentsFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IncidentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? taskId = null, Object? taskType = null}) {
    return _then(
      _$IncidentsFetchedImpl(
        taskId: null == taskId
            ? _value.taskId
            : taskId // ignore: cast_nullable_to_non_nullable
                  as int,
        taskType: null == taskType
            ? _value.taskType
            : taskType // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$IncidentsFetchedImpl implements IncidentsFetched {
  const _$IncidentsFetchedImpl({required this.taskId, required this.taskType});

  @override
  final int taskId;
  @override
  final String taskType;

  @override
  String toString() {
    return 'IncidentEvent.incidentsFetched(taskId: $taskId, taskType: $taskType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncidentsFetchedImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.taskType, taskType) ||
                other.taskType == taskType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId, taskType);

  /// Create a copy of IncidentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncidentsFetchedImplCopyWith<_$IncidentsFetchedImpl> get copyWith =>
      __$$IncidentsFetchedImplCopyWithImpl<_$IncidentsFetchedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId, String taskType) incidentsFetched,
    required TResult Function(int taskId, String description, String imagePath)
    incidentCreated,
  }) {
    return incidentsFetched(taskId, taskType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId, String taskType)? incidentsFetched,
    TResult? Function(int taskId, String description, String imagePath)?
    incidentCreated,
  }) {
    return incidentsFetched?.call(taskId, taskType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId, String taskType)? incidentsFetched,
    TResult Function(int taskId, String description, String imagePath)?
    incidentCreated,
    required TResult orElse(),
  }) {
    if (incidentsFetched != null) {
      return incidentsFetched(taskId, taskType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncidentsFetched value) incidentsFetched,
    required TResult Function(IncidentCreated value) incidentCreated,
  }) {
    return incidentsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IncidentsFetched value)? incidentsFetched,
    TResult? Function(IncidentCreated value)? incidentCreated,
  }) {
    return incidentsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncidentsFetched value)? incidentsFetched,
    TResult Function(IncidentCreated value)? incidentCreated,
    required TResult orElse(),
  }) {
    if (incidentsFetched != null) {
      return incidentsFetched(this);
    }
    return orElse();
  }
}

abstract class IncidentsFetched implements IncidentEvent {
  const factory IncidentsFetched({
    required final int taskId,
    required final String taskType,
  }) = _$IncidentsFetchedImpl;

  @override
  int get taskId;
  String get taskType;

  /// Create a copy of IncidentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncidentsFetchedImplCopyWith<_$IncidentsFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncidentCreatedImplCopyWith<$Res>
    implements $IncidentEventCopyWith<$Res> {
  factory _$$IncidentCreatedImplCopyWith(
    _$IncidentCreatedImpl value,
    $Res Function(_$IncidentCreatedImpl) then,
  ) = __$$IncidentCreatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int taskId, String description, String imagePath});
}

/// @nodoc
class __$$IncidentCreatedImplCopyWithImpl<$Res>
    extends _$IncidentEventCopyWithImpl<$Res, _$IncidentCreatedImpl>
    implements _$$IncidentCreatedImplCopyWith<$Res> {
  __$$IncidentCreatedImplCopyWithImpl(
    _$IncidentCreatedImpl _value,
    $Res Function(_$IncidentCreatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IncidentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? description = null,
    Object? imagePath = null,
  }) {
    return _then(
      _$IncidentCreatedImpl(
        taskId: null == taskId
            ? _value.taskId
            : taskId // ignore: cast_nullable_to_non_nullable
                  as int,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        imagePath: null == imagePath
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$IncidentCreatedImpl implements IncidentCreated {
  const _$IncidentCreatedImpl({
    required this.taskId,
    required this.description,
    required this.imagePath,
  });

  @override
  final int taskId;
  @override
  final String description;
  @override
  final String imagePath;

  @override
  String toString() {
    return 'IncidentEvent.incidentCreated(taskId: $taskId, description: $description, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncidentCreatedImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId, description, imagePath);

  /// Create a copy of IncidentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncidentCreatedImplCopyWith<_$IncidentCreatedImpl> get copyWith =>
      __$$IncidentCreatedImplCopyWithImpl<_$IncidentCreatedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId, String taskType) incidentsFetched,
    required TResult Function(int taskId, String description, String imagePath)
    incidentCreated,
  }) {
    return incidentCreated(taskId, description, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId, String taskType)? incidentsFetched,
    TResult? Function(int taskId, String description, String imagePath)?
    incidentCreated,
  }) {
    return incidentCreated?.call(taskId, description, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId, String taskType)? incidentsFetched,
    TResult Function(int taskId, String description, String imagePath)?
    incidentCreated,
    required TResult orElse(),
  }) {
    if (incidentCreated != null) {
      return incidentCreated(taskId, description, imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncidentsFetched value) incidentsFetched,
    required TResult Function(IncidentCreated value) incidentCreated,
  }) {
    return incidentCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IncidentsFetched value)? incidentsFetched,
    TResult? Function(IncidentCreated value)? incidentCreated,
  }) {
    return incidentCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncidentsFetched value)? incidentsFetched,
    TResult Function(IncidentCreated value)? incidentCreated,
    required TResult orElse(),
  }) {
    if (incidentCreated != null) {
      return incidentCreated(this);
    }
    return orElse();
  }
}

abstract class IncidentCreated implements IncidentEvent {
  const factory IncidentCreated({
    required final int taskId,
    required final String description,
    required final String imagePath,
  }) = _$IncidentCreatedImpl;

  @override
  int get taskId;
  String get description;
  String get imagePath;

  /// Create a copy of IncidentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncidentCreatedImplCopyWith<_$IncidentCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
