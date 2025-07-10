// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supply_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SupplyEvent {
  List<int> get supplyIds => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> supplyIds) supplyFetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> supplyIds)? supplyFetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> supplyIds)? supplyFetched,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SupplyFetched value) supplyFetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SupplyFetched value)? supplyFetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupplyFetched value)? supplyFetched,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of SupplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupplyEventCopyWith<SupplyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplyEventCopyWith<$Res> {
  factory $SupplyEventCopyWith(
    SupplyEvent value,
    $Res Function(SupplyEvent) then,
  ) = _$SupplyEventCopyWithImpl<$Res, SupplyEvent>;
  @useResult
  $Res call({List<int> supplyIds});
}

/// @nodoc
class _$SupplyEventCopyWithImpl<$Res, $Val extends SupplyEvent>
    implements $SupplyEventCopyWith<$Res> {
  _$SupplyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? supplyIds = null}) {
    return _then(
      _value.copyWith(
            supplyIds: null == supplyIds
                ? _value.supplyIds
                : supplyIds // ignore: cast_nullable_to_non_nullable
                      as List<int>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SupplyFetchedImplCopyWith<$Res>
    implements $SupplyEventCopyWith<$Res> {
  factory _$$SupplyFetchedImplCopyWith(
    _$SupplyFetchedImpl value,
    $Res Function(_$SupplyFetchedImpl) then,
  ) = __$$SupplyFetchedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> supplyIds});
}

/// @nodoc
class __$$SupplyFetchedImplCopyWithImpl<$Res>
    extends _$SupplyEventCopyWithImpl<$Res, _$SupplyFetchedImpl>
    implements _$$SupplyFetchedImplCopyWith<$Res> {
  __$$SupplyFetchedImplCopyWithImpl(
    _$SupplyFetchedImpl _value,
    $Res Function(_$SupplyFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SupplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? supplyIds = null}) {
    return _then(
      _$SupplyFetchedImpl(
        null == supplyIds
            ? _value._supplyIds
            : supplyIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
      ),
    );
  }
}

/// @nodoc

class _$SupplyFetchedImpl implements SupplyFetched {
  const _$SupplyFetchedImpl(final List<int> supplyIds) : _supplyIds = supplyIds;

  final List<int> _supplyIds;
  @override
  List<int> get supplyIds {
    if (_supplyIds is EqualUnmodifiableListView) return _supplyIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supplyIds);
  }

  @override
  String toString() {
    return 'SupplyEvent.supplyFetched(supplyIds: $supplyIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplyFetchedImpl &&
            const DeepCollectionEquality().equals(
              other._supplyIds,
              _supplyIds,
            ));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_supplyIds));

  /// Create a copy of SupplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupplyFetchedImplCopyWith<_$SupplyFetchedImpl> get copyWith =>
      __$$SupplyFetchedImplCopyWithImpl<_$SupplyFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> supplyIds) supplyFetched,
  }) {
    return supplyFetched(supplyIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> supplyIds)? supplyFetched,
  }) {
    return supplyFetched?.call(supplyIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> supplyIds)? supplyFetched,
    required TResult orElse(),
  }) {
    if (supplyFetched != null) {
      return supplyFetched(supplyIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SupplyFetched value) supplyFetched,
  }) {
    return supplyFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SupplyFetched value)? supplyFetched,
  }) {
    return supplyFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupplyFetched value)? supplyFetched,
    required TResult orElse(),
  }) {
    if (supplyFetched != null) {
      return supplyFetched(this);
    }
    return orElse();
  }
}

abstract class SupplyFetched implements SupplyEvent {
  const factory SupplyFetched(final List<int> supplyIds) = _$SupplyFetchedImpl;

  @override
  List<int> get supplyIds;

  /// Create a copy of SupplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupplyFetchedImplCopyWith<_$SupplyFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
