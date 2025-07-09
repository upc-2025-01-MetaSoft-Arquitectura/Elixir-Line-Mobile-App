// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evidence_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EvidenceEvent {
  int get taskId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) evidencesFetched,
    required TResult Function(
      int taskId,
      int progressPercentage,
      String description,
      String imagePath,
    )
    evidenceCreated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? evidencesFetched,
    TResult? Function(
      int taskId,
      int progressPercentage,
      String description,
      String imagePath,
    )?
    evidenceCreated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? evidencesFetched,
    TResult Function(
      int taskId,
      int progressPercentage,
      String description,
      String imagePath,
    )?
    evidenceCreated,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvidencesFetched value) evidencesFetched,
    required TResult Function(EvidenceCreated value) evidenceCreated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EvidencesFetched value)? evidencesFetched,
    TResult? Function(EvidenceCreated value)? evidenceCreated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvidencesFetched value)? evidencesFetched,
    TResult Function(EvidenceCreated value)? evidenceCreated,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of EvidenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EvidenceEventCopyWith<EvidenceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvidenceEventCopyWith<$Res> {
  factory $EvidenceEventCopyWith(
    EvidenceEvent value,
    $Res Function(EvidenceEvent) then,
  ) = _$EvidenceEventCopyWithImpl<$Res, EvidenceEvent>;
  @useResult
  $Res call({int taskId});
}

/// @nodoc
class _$EvidenceEventCopyWithImpl<$Res, $Val extends EvidenceEvent>
    implements $EvidenceEventCopyWith<$Res> {
  _$EvidenceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EvidenceEvent
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
abstract class _$$EvidencesFetchedImplCopyWith<$Res>
    implements $EvidenceEventCopyWith<$Res> {
  factory _$$EvidencesFetchedImplCopyWith(
    _$EvidencesFetchedImpl value,
    $Res Function(_$EvidencesFetchedImpl) then,
  ) = __$$EvidencesFetchedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int taskId});
}

/// @nodoc
class __$$EvidencesFetchedImplCopyWithImpl<$Res>
    extends _$EvidenceEventCopyWithImpl<$Res, _$EvidencesFetchedImpl>
    implements _$$EvidencesFetchedImplCopyWith<$Res> {
  __$$EvidencesFetchedImplCopyWithImpl(
    _$EvidencesFetchedImpl _value,
    $Res Function(_$EvidencesFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EvidenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? taskId = null}) {
    return _then(
      _$EvidencesFetchedImpl(
        null == taskId
            ? _value.taskId
            : taskId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$EvidencesFetchedImpl implements EvidencesFetched {
  const _$EvidencesFetchedImpl(this.taskId);

  @override
  final int taskId;

  @override
  String toString() {
    return 'EvidenceEvent.evidencesFetched(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvidencesFetchedImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of EvidenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EvidencesFetchedImplCopyWith<_$EvidencesFetchedImpl> get copyWith =>
      __$$EvidencesFetchedImplCopyWithImpl<_$EvidencesFetchedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) evidencesFetched,
    required TResult Function(
      int taskId,
      int progressPercentage,
      String description,
      String imagePath,
    )
    evidenceCreated,
  }) {
    return evidencesFetched(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? evidencesFetched,
    TResult? Function(
      int taskId,
      int progressPercentage,
      String description,
      String imagePath,
    )?
    evidenceCreated,
  }) {
    return evidencesFetched?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? evidencesFetched,
    TResult Function(
      int taskId,
      int progressPercentage,
      String description,
      String imagePath,
    )?
    evidenceCreated,
    required TResult orElse(),
  }) {
    if (evidencesFetched != null) {
      return evidencesFetched(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvidencesFetched value) evidencesFetched,
    required TResult Function(EvidenceCreated value) evidenceCreated,
  }) {
    return evidencesFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EvidencesFetched value)? evidencesFetched,
    TResult? Function(EvidenceCreated value)? evidenceCreated,
  }) {
    return evidencesFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvidencesFetched value)? evidencesFetched,
    TResult Function(EvidenceCreated value)? evidenceCreated,
    required TResult orElse(),
  }) {
    if (evidencesFetched != null) {
      return evidencesFetched(this);
    }
    return orElse();
  }
}

abstract class EvidencesFetched implements EvidenceEvent {
  const factory EvidencesFetched(final int taskId) = _$EvidencesFetchedImpl;

  @override
  int get taskId;

  /// Create a copy of EvidenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EvidencesFetchedImplCopyWith<_$EvidencesFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EvidenceCreatedImplCopyWith<$Res>
    implements $EvidenceEventCopyWith<$Res> {
  factory _$$EvidenceCreatedImplCopyWith(
    _$EvidenceCreatedImpl value,
    $Res Function(_$EvidenceCreatedImpl) then,
  ) = __$$EvidenceCreatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int taskId,
    int progressPercentage,
    String description,
    String imagePath,
  });
}

/// @nodoc
class __$$EvidenceCreatedImplCopyWithImpl<$Res>
    extends _$EvidenceEventCopyWithImpl<$Res, _$EvidenceCreatedImpl>
    implements _$$EvidenceCreatedImplCopyWith<$Res> {
  __$$EvidenceCreatedImplCopyWithImpl(
    _$EvidenceCreatedImpl _value,
    $Res Function(_$EvidenceCreatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EvidenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? progressPercentage = null,
    Object? description = null,
    Object? imagePath = null,
  }) {
    return _then(
      _$EvidenceCreatedImpl(
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
        imagePath: null == imagePath
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$EvidenceCreatedImpl implements EvidenceCreated {
  const _$EvidenceCreatedImpl({
    required this.taskId,
    required this.progressPercentage,
    required this.description,
    required this.imagePath,
  });

  @override
  final int taskId;
  @override
  final int progressPercentage;
  @override
  final String description;
  @override
  final String imagePath;

  @override
  String toString() {
    return 'EvidenceEvent.evidenceCreated(taskId: $taskId, progressPercentage: $progressPercentage, description: $description, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvidenceCreatedImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.progressPercentage, progressPercentage) ||
                other.progressPercentage == progressPercentage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    taskId,
    progressPercentage,
    description,
    imagePath,
  );

  /// Create a copy of EvidenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EvidenceCreatedImplCopyWith<_$EvidenceCreatedImpl> get copyWith =>
      __$$EvidenceCreatedImplCopyWithImpl<_$EvidenceCreatedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) evidencesFetched,
    required TResult Function(
      int taskId,
      int progressPercentage,
      String description,
      String imagePath,
    )
    evidenceCreated,
  }) {
    return evidenceCreated(taskId, progressPercentage, description, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? evidencesFetched,
    TResult? Function(
      int taskId,
      int progressPercentage,
      String description,
      String imagePath,
    )?
    evidenceCreated,
  }) {
    return evidenceCreated?.call(
      taskId,
      progressPercentage,
      description,
      imagePath,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? evidencesFetched,
    TResult Function(
      int taskId,
      int progressPercentage,
      String description,
      String imagePath,
    )?
    evidenceCreated,
    required TResult orElse(),
  }) {
    if (evidenceCreated != null) {
      return evidenceCreated(
        taskId,
        progressPercentage,
        description,
        imagePath,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvidencesFetched value) evidencesFetched,
    required TResult Function(EvidenceCreated value) evidenceCreated,
  }) {
    return evidenceCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EvidencesFetched value)? evidencesFetched,
    TResult? Function(EvidenceCreated value)? evidenceCreated,
  }) {
    return evidenceCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvidencesFetched value)? evidencesFetched,
    TResult Function(EvidenceCreated value)? evidenceCreated,
    required TResult orElse(),
  }) {
    if (evidenceCreated != null) {
      return evidenceCreated(this);
    }
    return orElse();
  }
}

abstract class EvidenceCreated implements EvidenceEvent {
  const factory EvidenceCreated({
    required final int taskId,
    required final int progressPercentage,
    required final String description,
    required final String imagePath,
  }) = _$EvidenceCreatedImpl;

  @override
  int get taskId;
  int get progressPercentage;
  String get description;
  String get imagePath;

  /// Create a copy of EvidenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EvidenceCreatedImplCopyWith<_$EvidenceCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
