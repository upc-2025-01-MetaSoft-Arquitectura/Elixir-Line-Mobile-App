// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) loaded,
    required TResult Function(String imageUrl) updated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? loaded,
    TResult? Function(String imageUrl)? updated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? loaded,
    TResult Function(String imageUrl)? updated,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfilePictureUpdated value) updated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfilePictureUpdated value)? updated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfilePictureUpdated value)? updated,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
    ProfileEvent value,
    $Res Function(ProfileEvent) then,
  ) = _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileLoadedImplCopyWith<$Res> {
  factory _$$ProfileLoadedImplCopyWith(
    _$ProfileLoadedImpl value,
    $Res Function(_$ProfileLoadedImpl) then,
  ) = __$$ProfileLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$ProfileLoadedImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileLoadedImpl>
    implements _$$ProfileLoadedImplCopyWith<$Res> {
  __$$ProfileLoadedImplCopyWithImpl(
    _$ProfileLoadedImpl _value,
    $Res Function(_$ProfileLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null}) {
    return _then(
      _$ProfileLoadedImpl(
        null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ProfileLoadedImpl implements ProfileLoaded {
  const _$ProfileLoadedImpl(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'ProfileEvent.loaded(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadedImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileLoadedImplCopyWith<_$ProfileLoadedImpl> get copyWith =>
      __$$ProfileLoadedImplCopyWithImpl<_$ProfileLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) loaded,
    required TResult Function(String imageUrl) updated,
  }) {
    return loaded(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? loaded,
    TResult? Function(String imageUrl)? updated,
  }) {
    return loaded?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? loaded,
    TResult Function(String imageUrl)? updated,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfilePictureUpdated value) updated,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfilePictureUpdated value)? updated,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfilePictureUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProfileLoaded implements ProfileEvent {
  const factory ProfileLoaded(final int userId) = _$ProfileLoadedImpl;

  int get userId;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileLoadedImplCopyWith<_$ProfileLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfilePictureUpdatedImplCopyWith<$Res> {
  factory _$$ProfilePictureUpdatedImplCopyWith(
    _$ProfilePictureUpdatedImpl value,
    $Res Function(_$ProfilePictureUpdatedImpl) then,
  ) = __$$ProfilePictureUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$$ProfilePictureUpdatedImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfilePictureUpdatedImpl>
    implements _$$ProfilePictureUpdatedImplCopyWith<$Res> {
  __$$ProfilePictureUpdatedImplCopyWithImpl(
    _$ProfilePictureUpdatedImpl _value,
    $Res Function(_$ProfilePictureUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? imageUrl = null}) {
    return _then(
      _$ProfilePictureUpdatedImpl(
        null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ProfilePictureUpdatedImpl implements ProfilePictureUpdated {
  const _$ProfilePictureUpdatedImpl(this.imageUrl);

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ProfileEvent.updated(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePictureUpdatedImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilePictureUpdatedImplCopyWith<_$ProfilePictureUpdatedImpl>
  get copyWith =>
      __$$ProfilePictureUpdatedImplCopyWithImpl<_$ProfilePictureUpdatedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) loaded,
    required TResult Function(String imageUrl) updated,
  }) {
    return updated(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? loaded,
    TResult? Function(String imageUrl)? updated,
  }) {
    return updated?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? loaded,
    TResult Function(String imageUrl)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfilePictureUpdated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfilePictureUpdated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfilePictureUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class ProfilePictureUpdated implements ProfileEvent {
  const factory ProfilePictureUpdated(final String imageUrl) =
      _$ProfilePictureUpdatedImpl;

  String get imageUrl;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfilePictureUpdatedImplCopyWith<_$ProfilePictureUpdatedImpl>
  get copyWith => throw _privateConstructorUsedError;
}
