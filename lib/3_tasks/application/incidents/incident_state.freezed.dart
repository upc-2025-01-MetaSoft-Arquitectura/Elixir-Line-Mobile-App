// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incident_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$IncidentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Incident> incidents) loadSuccess,
    required TResult Function(Incident incident) createSuccess,
    required TResult Function() operationInProgress,
    required TResult Function(TaskFailure failure) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Incident> incidents)? loadSuccess,
    TResult? Function(Incident incident)? createSuccess,
    TResult? Function()? operationInProgress,
    TResult? Function(TaskFailure failure)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Incident> incidents)? loadSuccess,
    TResult Function(Incident incident)? createSuccess,
    TResult Function()? operationInProgress,
    TResult Function(TaskFailure failure)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_OperationInProgress value) operationInProgress,
    required TResult Function(_Failure value) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_OperationInProgress value)? operationInProgress,
    TResult? Function(_Failure value)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_OperationInProgress value)? operationInProgress,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncidentStateCopyWith<$Res> {
  factory $IncidentStateCopyWith(
    IncidentState value,
    $Res Function(IncidentState) then,
  ) = _$IncidentStateCopyWithImpl<$Res, IncidentState>;
}

/// @nodoc
class _$IncidentStateCopyWithImpl<$Res, $Val extends IncidentState>
    implements $IncidentStateCopyWith<$Res> {
  _$IncidentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IncidentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$IncidentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IncidentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'IncidentState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Incident> incidents) loadSuccess,
    required TResult Function(Incident incident) createSuccess,
    required TResult Function() operationInProgress,
    required TResult Function(TaskFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Incident> incidents)? loadSuccess,
    TResult? Function(Incident incident)? createSuccess,
    TResult? Function()? operationInProgress,
    TResult? Function(TaskFailure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Incident> incidents)? loadSuccess,
    TResult Function(Incident incident)? createSuccess,
    TResult Function()? operationInProgress,
    TResult Function(TaskFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_OperationInProgress value) operationInProgress,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_OperationInProgress value)? operationInProgress,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_OperationInProgress value)? operationInProgress,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements IncidentState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$IncidentStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IncidentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'IncidentState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Incident> incidents) loadSuccess,
    required TResult Function(Incident incident) createSuccess,
    required TResult Function() operationInProgress,
    required TResult Function(TaskFailure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Incident> incidents)? loadSuccess,
    TResult? Function(Incident incident)? createSuccess,
    TResult? Function()? operationInProgress,
    TResult? Function(TaskFailure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Incident> incidents)? loadSuccess,
    TResult Function(Incident incident)? createSuccess,
    TResult Function()? operationInProgress,
    TResult Function(TaskFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_OperationInProgress value) operationInProgress,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_OperationInProgress value)? operationInProgress,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_OperationInProgress value)? operationInProgress,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements IncidentState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
    _$LoadSuccessImpl value,
    $Res Function(_$LoadSuccessImpl) then,
  ) = __$$LoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Incident> incidents});
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$IncidentStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
    _$LoadSuccessImpl _value,
    $Res Function(_$LoadSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IncidentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? incidents = null}) {
    return _then(
      _$LoadSuccessImpl(
        null == incidents
            ? _value._incidents
            : incidents // ignore: cast_nullable_to_non_nullable
                  as List<Incident>,
      ),
    );
  }
}

/// @nodoc

class _$LoadSuccessImpl implements _LoadSuccess {
  const _$LoadSuccessImpl(final List<Incident> incidents)
    : _incidents = incidents;

  final List<Incident> _incidents;
  @override
  List<Incident> get incidents {
    if (_incidents is EqualUnmodifiableListView) return _incidents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incidents);
  }

  @override
  String toString() {
    return 'IncidentState.loadSuccess(incidents: $incidents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            const DeepCollectionEquality().equals(
              other._incidents,
              _incidents,
            ));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_incidents));

  /// Create a copy of IncidentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Incident> incidents) loadSuccess,
    required TResult Function(Incident incident) createSuccess,
    required TResult Function() operationInProgress,
    required TResult Function(TaskFailure failure) failure,
  }) {
    return loadSuccess(incidents);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Incident> incidents)? loadSuccess,
    TResult? Function(Incident incident)? createSuccess,
    TResult? Function()? operationInProgress,
    TResult? Function(TaskFailure failure)? failure,
  }) {
    return loadSuccess?.call(incidents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Incident> incidents)? loadSuccess,
    TResult Function(Incident incident)? createSuccess,
    TResult Function()? operationInProgress,
    TResult Function(TaskFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(incidents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_OperationInProgress value) operationInProgress,
    required TResult Function(_Failure value) failure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_OperationInProgress value)? operationInProgress,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_OperationInProgress value)? operationInProgress,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements IncidentState {
  const factory _LoadSuccess(final List<Incident> incidents) =
      _$LoadSuccessImpl;

  List<Incident> get incidents;

  /// Create a copy of IncidentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateSuccessImplCopyWith<$Res> {
  factory _$$CreateSuccessImplCopyWith(
    _$CreateSuccessImpl value,
    $Res Function(_$CreateSuccessImpl) then,
  ) = __$$CreateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Incident incident});

  $IncidentCopyWith<$Res> get incident;
}

/// @nodoc
class __$$CreateSuccessImplCopyWithImpl<$Res>
    extends _$IncidentStateCopyWithImpl<$Res, _$CreateSuccessImpl>
    implements _$$CreateSuccessImplCopyWith<$Res> {
  __$$CreateSuccessImplCopyWithImpl(
    _$CreateSuccessImpl _value,
    $Res Function(_$CreateSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IncidentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? incident = null}) {
    return _then(
      _$CreateSuccessImpl(
        null == incident
            ? _value.incident
            : incident // ignore: cast_nullable_to_non_nullable
                  as Incident,
      ),
    );
  }

  /// Create a copy of IncidentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IncidentCopyWith<$Res> get incident {
    return $IncidentCopyWith<$Res>(_value.incident, (value) {
      return _then(_value.copyWith(incident: value));
    });
  }
}

/// @nodoc

class _$CreateSuccessImpl implements _CreateSuccess {
  const _$CreateSuccessImpl(this.incident);

  @override
  final Incident incident;

  @override
  String toString() {
    return 'IncidentState.createSuccess(incident: $incident)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSuccessImpl &&
            (identical(other.incident, incident) ||
                other.incident == incident));
  }

  @override
  int get hashCode => Object.hash(runtimeType, incident);

  /// Create a copy of IncidentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSuccessImplCopyWith<_$CreateSuccessImpl> get copyWith =>
      __$$CreateSuccessImplCopyWithImpl<_$CreateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Incident> incidents) loadSuccess,
    required TResult Function(Incident incident) createSuccess,
    required TResult Function() operationInProgress,
    required TResult Function(TaskFailure failure) failure,
  }) {
    return createSuccess(incident);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Incident> incidents)? loadSuccess,
    TResult? Function(Incident incident)? createSuccess,
    TResult? Function()? operationInProgress,
    TResult? Function(TaskFailure failure)? failure,
  }) {
    return createSuccess?.call(incident);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Incident> incidents)? loadSuccess,
    TResult Function(Incident incident)? createSuccess,
    TResult Function()? operationInProgress,
    TResult Function(TaskFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(incident);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_OperationInProgress value) operationInProgress,
    required TResult Function(_Failure value) failure,
  }) {
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_OperationInProgress value)? operationInProgress,
    TResult? Function(_Failure value)? failure,
  }) {
    return createSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_OperationInProgress value)? operationInProgress,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateSuccess implements IncidentState {
  const factory _CreateSuccess(final Incident incident) = _$CreateSuccessImpl;

  Incident get incident;

  /// Create a copy of IncidentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSuccessImplCopyWith<_$CreateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OperationInProgressImplCopyWith<$Res> {
  factory _$$OperationInProgressImplCopyWith(
    _$OperationInProgressImpl value,
    $Res Function(_$OperationInProgressImpl) then,
  ) = __$$OperationInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OperationInProgressImplCopyWithImpl<$Res>
    extends _$IncidentStateCopyWithImpl<$Res, _$OperationInProgressImpl>
    implements _$$OperationInProgressImplCopyWith<$Res> {
  __$$OperationInProgressImplCopyWithImpl(
    _$OperationInProgressImpl _value,
    $Res Function(_$OperationInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IncidentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OperationInProgressImpl implements _OperationInProgress {
  const _$OperationInProgressImpl();

  @override
  String toString() {
    return 'IncidentState.operationInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Incident> incidents) loadSuccess,
    required TResult Function(Incident incident) createSuccess,
    required TResult Function() operationInProgress,
    required TResult Function(TaskFailure failure) failure,
  }) {
    return operationInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Incident> incidents)? loadSuccess,
    TResult? Function(Incident incident)? createSuccess,
    TResult? Function()? operationInProgress,
    TResult? Function(TaskFailure failure)? failure,
  }) {
    return operationInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Incident> incidents)? loadSuccess,
    TResult Function(Incident incident)? createSuccess,
    TResult Function()? operationInProgress,
    TResult Function(TaskFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (operationInProgress != null) {
      return operationInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_OperationInProgress value) operationInProgress,
    required TResult Function(_Failure value) failure,
  }) {
    return operationInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_OperationInProgress value)? operationInProgress,
    TResult? Function(_Failure value)? failure,
  }) {
    return operationInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_OperationInProgress value)? operationInProgress,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (operationInProgress != null) {
      return operationInProgress(this);
    }
    return orElse();
  }
}

abstract class _OperationInProgress implements IncidentState {
  const factory _OperationInProgress() = _$OperationInProgressImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
    _$FailureImpl value,
    $Res Function(_$FailureImpl) then,
  ) = __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskFailure failure});

  $TaskFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$IncidentStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
    _$FailureImpl _value,
    $Res Function(_$FailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IncidentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? failure = null}) {
    return _then(
      _$FailureImpl(
        null == failure
            ? _value.failure
            : failure // ignore: cast_nullable_to_non_nullable
                  as TaskFailure,
      ),
    );
  }

  /// Create a copy of IncidentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskFailureCopyWith<$Res> get failure {
    return $TaskFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.failure);

  @override
  final TaskFailure failure;

  @override
  String toString() {
    return 'IncidentState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of IncidentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Incident> incidents) loadSuccess,
    required TResult Function(Incident incident) createSuccess,
    required TResult Function() operationInProgress,
    required TResult Function(TaskFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Incident> incidents)? loadSuccess,
    TResult? Function(Incident incident)? createSuccess,
    TResult? Function()? operationInProgress,
    TResult? Function(TaskFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Incident> incidents)? loadSuccess,
    TResult Function(Incident incident)? createSuccess,
    TResult Function()? operationInProgress,
    TResult Function(TaskFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_OperationInProgress value) operationInProgress,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_OperationInProgress value)? operationInProgress,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_OperationInProgress value)? operationInProgress,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements IncidentState {
  const factory _Failure(final TaskFailure failure) = _$FailureImpl;

  TaskFailure get failure;

  /// Create a copy of IncidentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
