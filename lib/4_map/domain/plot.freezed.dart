// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Plot _$PlotFromJson(Map<String, dynamic> json) {
  return _Plot.fromJson(json);
}

/// @nodoc
mixin _$Plot {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<LatLng> get path => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  int get batchId => throw _privateConstructorUsedError;
  int get winegrowerId => throw _privateConstructorUsedError;

  /// Serializes this Plot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Plot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlotCopyWith<Plot> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlotCopyWith<$Res> {
  factory $PlotCopyWith(Plot value, $Res Function(Plot) then) =
      _$PlotCopyWithImpl<$Res, Plot>;
  @useResult
  $Res call({
    int id,
    String type,
    List<LatLng> path,
    String label,
    int batchId,
    int winegrowerId,
  });
}

/// @nodoc
class _$PlotCopyWithImpl<$Res, $Val extends Plot>
    implements $PlotCopyWith<$Res> {
  _$PlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Plot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? path = null,
    Object? label = null,
    Object? batchId = null,
    Object? winegrowerId = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            path: null == path
                ? _value.path
                : path // ignore: cast_nullable_to_non_nullable
                      as List<LatLng>,
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            batchId: null == batchId
                ? _value.batchId
                : batchId // ignore: cast_nullable_to_non_nullable
                      as int,
            winegrowerId: null == winegrowerId
                ? _value.winegrowerId
                : winegrowerId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlotImplCopyWith<$Res> implements $PlotCopyWith<$Res> {
  factory _$$PlotImplCopyWith(
    _$PlotImpl value,
    $Res Function(_$PlotImpl) then,
  ) = __$$PlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String type,
    List<LatLng> path,
    String label,
    int batchId,
    int winegrowerId,
  });
}

/// @nodoc
class __$$PlotImplCopyWithImpl<$Res>
    extends _$PlotCopyWithImpl<$Res, _$PlotImpl>
    implements _$$PlotImplCopyWith<$Res> {
  __$$PlotImplCopyWithImpl(_$PlotImpl _value, $Res Function(_$PlotImpl) _then)
    : super(_value, _then);

  /// Create a copy of Plot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? path = null,
    Object? label = null,
    Object? batchId = null,
    Object? winegrowerId = null,
  }) {
    return _then(
      _$PlotImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        path: null == path
            ? _value._path
            : path // ignore: cast_nullable_to_non_nullable
                  as List<LatLng>,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        batchId: null == batchId
            ? _value.batchId
            : batchId // ignore: cast_nullable_to_non_nullable
                  as int,
        winegrowerId: null == winegrowerId
            ? _value.winegrowerId
            : winegrowerId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlotImpl implements _Plot {
  const _$PlotImpl({
    required this.id,
    required this.type,
    required final List<LatLng> path,
    required this.label,
    required this.batchId,
    required this.winegrowerId,
  }) : _path = path;

  factory _$PlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlotImplFromJson(json);

  @override
  final int id;
  @override
  final String type;
  final List<LatLng> _path;
  @override
  List<LatLng> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

  @override
  final String label;
  @override
  final int batchId;
  @override
  final int winegrowerId;

  @override
  String toString() {
    return 'Plot(id: $id, type: $type, path: $path, label: $label, batchId: $batchId, winegrowerId: $winegrowerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlotImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._path, _path) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.winegrowerId, winegrowerId) ||
                other.winegrowerId == winegrowerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    type,
    const DeepCollectionEquality().hash(_path),
    label,
    batchId,
    winegrowerId,
  );

  /// Create a copy of Plot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlotImplCopyWith<_$PlotImpl> get copyWith =>
      __$$PlotImplCopyWithImpl<_$PlotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlotImplToJson(this);
  }
}

abstract class _Plot implements Plot {
  const factory _Plot({
    required final int id,
    required final String type,
    required final List<LatLng> path,
    required final String label,
    required final int batchId,
    required final int winegrowerId,
  }) = _$PlotImpl;

  factory _Plot.fromJson(Map<String, dynamic> json) = _$PlotImpl.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  List<LatLng> get path;
  @override
  String get label;
  @override
  int get batchId;
  @override
  int get winegrowerId;

  /// Create a copy of Plot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlotImplCopyWith<_$PlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
