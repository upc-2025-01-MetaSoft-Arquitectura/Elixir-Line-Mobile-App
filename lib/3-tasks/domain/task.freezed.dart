// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'startDate')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'endDate')
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'winegrowerId')
  int get winegrowerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fieldWorkerName')
  String get fieldWorkerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'fieldWorkerId')
  int get fieldWorkerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'batchId')
  int get batchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'progressPercentage')
  int get progressPercentage => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'suppliesIds')
  List<int> get suppliesIds => throw _privateConstructorUsedError;

  /// Serializes this Task to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call({
    int id,
    String title,
    String description,
    @JsonKey(name: 'startDate') String startDate,
    @JsonKey(name: 'endDate') String endDate,
    @JsonKey(name: 'winegrowerId') int winegrowerId,
    @JsonKey(name: 'fieldWorkerName') String fieldWorkerName,
    @JsonKey(name: 'fieldWorkerId') int fieldWorkerId,
    @JsonKey(name: 'batchId') int batchId,
    @JsonKey(name: 'progressPercentage') int progressPercentage,
    String status,
    String type,
    @JsonKey(name: 'suppliesIds') List<int> suppliesIds,
  });
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? winegrowerId = null,
    Object? fieldWorkerName = null,
    Object? fieldWorkerId = null,
    Object? batchId = null,
    Object? progressPercentage = null,
    Object? status = null,
    Object? type = null,
    Object? suppliesIds = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as String,
            endDate: null == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as String,
            winegrowerId: null == winegrowerId
                ? _value.winegrowerId
                : winegrowerId // ignore: cast_nullable_to_non_nullable
                      as int,
            fieldWorkerName: null == fieldWorkerName
                ? _value.fieldWorkerName
                : fieldWorkerName // ignore: cast_nullable_to_non_nullable
                      as String,
            fieldWorkerId: null == fieldWorkerId
                ? _value.fieldWorkerId
                : fieldWorkerId // ignore: cast_nullable_to_non_nullable
                      as int,
            batchId: null == batchId
                ? _value.batchId
                : batchId // ignore: cast_nullable_to_non_nullable
                      as int,
            progressPercentage: null == progressPercentage
                ? _value.progressPercentage
                : progressPercentage // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            suppliesIds: null == suppliesIds
                ? _value.suppliesIds
                : suppliesIds // ignore: cast_nullable_to_non_nullable
                      as List<int>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
    _$TaskImpl value,
    $Res Function(_$TaskImpl) then,
  ) = __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String description,
    @JsonKey(name: 'startDate') String startDate,
    @JsonKey(name: 'endDate') String endDate,
    @JsonKey(name: 'winegrowerId') int winegrowerId,
    @JsonKey(name: 'fieldWorkerName') String fieldWorkerName,
    @JsonKey(name: 'fieldWorkerId') int fieldWorkerId,
    @JsonKey(name: 'batchId') int batchId,
    @JsonKey(name: 'progressPercentage') int progressPercentage,
    String status,
    String type,
    @JsonKey(name: 'suppliesIds') List<int> suppliesIds,
  });
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
    : super(_value, _then);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? winegrowerId = null,
    Object? fieldWorkerName = null,
    Object? fieldWorkerId = null,
    Object? batchId = null,
    Object? progressPercentage = null,
    Object? status = null,
    Object? type = null,
    Object? suppliesIds = null,
  }) {
    return _then(
      _$TaskImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as String,
        endDate: null == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as String,
        winegrowerId: null == winegrowerId
            ? _value.winegrowerId
            : winegrowerId // ignore: cast_nullable_to_non_nullable
                  as int,
        fieldWorkerName: null == fieldWorkerName
            ? _value.fieldWorkerName
            : fieldWorkerName // ignore: cast_nullable_to_non_nullable
                  as String,
        fieldWorkerId: null == fieldWorkerId
            ? _value.fieldWorkerId
            : fieldWorkerId // ignore: cast_nullable_to_non_nullable
                  as int,
        batchId: null == batchId
            ? _value.batchId
            : batchId // ignore: cast_nullable_to_non_nullable
                  as int,
        progressPercentage: null == progressPercentage
            ? _value.progressPercentage
            : progressPercentage // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        suppliesIds: null == suppliesIds
            ? _value._suppliesIds
            : suppliesIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl implements _Task {
  const _$TaskImpl({
    required this.id,
    required this.title,
    required this.description,
    @JsonKey(name: 'startDate') required this.startDate,
    @JsonKey(name: 'endDate') required this.endDate,
    @JsonKey(name: 'winegrowerId') required this.winegrowerId,
    @JsonKey(name: 'fieldWorkerName') required this.fieldWorkerName,
    @JsonKey(name: 'fieldWorkerId') required this.fieldWorkerId,
    @JsonKey(name: 'batchId') required this.batchId,
    @JsonKey(name: 'progressPercentage') required this.progressPercentage,
    required this.status,
    required this.type,
    @JsonKey(name: 'suppliesIds') required final List<int> suppliesIds,
  }) : _suppliesIds = suppliesIds;

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'startDate')
  final String startDate;
  @override
  @JsonKey(name: 'endDate')
  final String endDate;
  @override
  @JsonKey(name: 'winegrowerId')
  final int winegrowerId;
  @override
  @JsonKey(name: 'fieldWorkerName')
  final String fieldWorkerName;
  @override
  @JsonKey(name: 'fieldWorkerId')
  final int fieldWorkerId;
  @override
  @JsonKey(name: 'batchId')
  final int batchId;
  @override
  @JsonKey(name: 'progressPercentage')
  final int progressPercentage;
  @override
  final String status;
  @override
  final String type;
  final List<int> _suppliesIds;
  @override
  @JsonKey(name: 'suppliesIds')
  List<int> get suppliesIds {
    if (_suppliesIds is EqualUnmodifiableListView) return _suppliesIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suppliesIds);
  }

  @override
  String toString() {
    return 'Task(id: $id, title: $title, description: $description, startDate: $startDate, endDate: $endDate, winegrowerId: $winegrowerId, fieldWorkerName: $fieldWorkerName, fieldWorkerId: $fieldWorkerId, batchId: $batchId, progressPercentage: $progressPercentage, status: $status, type: $type, suppliesIds: $suppliesIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.winegrowerId, winegrowerId) ||
                other.winegrowerId == winegrowerId) &&
            (identical(other.fieldWorkerName, fieldWorkerName) ||
                other.fieldWorkerName == fieldWorkerName) &&
            (identical(other.fieldWorkerId, fieldWorkerId) ||
                other.fieldWorkerId == fieldWorkerId) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.progressPercentage, progressPercentage) ||
                other.progressPercentage == progressPercentage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(
              other._suppliesIds,
              _suppliesIds,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    startDate,
    endDate,
    winegrowerId,
    fieldWorkerName,
    fieldWorkerId,
    batchId,
    progressPercentage,
    status,
    type,
    const DeepCollectionEquality().hash(_suppliesIds),
  );

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(this);
  }
}

abstract class _Task implements Task {
  const factory _Task({
    required final int id,
    required final String title,
    required final String description,
    @JsonKey(name: 'startDate') required final String startDate,
    @JsonKey(name: 'endDate') required final String endDate,
    @JsonKey(name: 'winegrowerId') required final int winegrowerId,
    @JsonKey(name: 'fieldWorkerName') required final String fieldWorkerName,
    @JsonKey(name: 'fieldWorkerId') required final int fieldWorkerId,
    @JsonKey(name: 'batchId') required final int batchId,
    @JsonKey(name: 'progressPercentage') required final int progressPercentage,
    required final String status,
    required final String type,
    @JsonKey(name: 'suppliesIds') required final List<int> suppliesIds,
  }) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'startDate')
  String get startDate;
  @override
  @JsonKey(name: 'endDate')
  String get endDate;
  @override
  @JsonKey(name: 'winegrowerId')
  int get winegrowerId;
  @override
  @JsonKey(name: 'fieldWorkerName')
  String get fieldWorkerName;
  @override
  @JsonKey(name: 'fieldWorkerId')
  int get fieldWorkerId;
  @override
  @JsonKey(name: 'batchId')
  int get batchId;
  @override
  @JsonKey(name: 'progressPercentage')
  int get progressPercentage;
  @override
  String get status;
  @override
  String get type;
  @override
  @JsonKey(name: 'suppliesIds')
  List<int> get suppliesIds;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
