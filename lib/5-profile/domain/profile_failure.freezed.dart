// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileFailure()';
}


}

/// @nodoc
class $ProfileFailureCopyWith<$Res>  {
$ProfileFailureCopyWith(ProfileFailure _, $Res Function(ProfileFailure) __);
}


/// Adds pattern-matching-related methods to [ProfileFailure].
extension ProfileFailurePatterns on ProfileFailure {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Unexpected value)?  unexpected,TResult Function( UnableToUpdate value)?  unableToUpdate,TResult Function( Unauthenticated value)?  unauthenticated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Unexpected() when unexpected != null:
return unexpected(_that);case UnableToUpdate() when unableToUpdate != null:
return unableToUpdate(_that);case Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Unexpected value)  unexpected,required TResult Function( UnableToUpdate value)  unableToUpdate,required TResult Function( Unauthenticated value)  unauthenticated,}){
final _that = this;
switch (_that) {
case Unexpected():
return unexpected(_that);case UnableToUpdate():
return unableToUpdate(_that);case Unauthenticated():
return unauthenticated(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Unexpected value)?  unexpected,TResult? Function( UnableToUpdate value)?  unableToUpdate,TResult? Function( Unauthenticated value)?  unauthenticated,}){
final _that = this;
switch (_that) {
case Unexpected() when unexpected != null:
return unexpected(_that);case UnableToUpdate() when unableToUpdate != null:
return unableToUpdate(_that);case Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  unexpected,TResult Function()?  unableToUpdate,TResult Function()?  unauthenticated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Unexpected() when unexpected != null:
return unexpected();case UnableToUpdate() when unableToUpdate != null:
return unableToUpdate();case Unauthenticated() when unauthenticated != null:
return unauthenticated();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  unexpected,required TResult Function()  unableToUpdate,required TResult Function()  unauthenticated,}) {final _that = this;
switch (_that) {
case Unexpected():
return unexpected();case UnableToUpdate():
return unableToUpdate();case Unauthenticated():
return unauthenticated();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  unexpected,TResult? Function()?  unableToUpdate,TResult? Function()?  unauthenticated,}) {final _that = this;
switch (_that) {
case Unexpected() when unexpected != null:
return unexpected();case UnableToUpdate() when unableToUpdate != null:
return unableToUpdate();case Unauthenticated() when unauthenticated != null:
return unauthenticated();case _:
  return null;

}
}

}

/// @nodoc


class Unexpected implements ProfileFailure {
  const Unexpected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unexpected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileFailure.unexpected()';
}


}




/// @nodoc


class UnableToUpdate implements ProfileFailure {
  const UnableToUpdate();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnableToUpdate);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileFailure.unableToUpdate()';
}


}




/// @nodoc


class Unauthenticated implements ProfileFailure {
  const Unauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileFailure.unauthenticated()';
}


}




// dart format on
