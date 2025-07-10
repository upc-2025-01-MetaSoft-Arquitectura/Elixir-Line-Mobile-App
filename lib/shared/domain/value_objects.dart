import 'package:dartz/dartz.dart';
import 'errors.dart';
import 'failures.dart';

abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), (r) => r);
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';
}
