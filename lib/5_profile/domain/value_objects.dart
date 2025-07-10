// lib/profile/domain/value_objects.dart
import 'package:dartz/dartz.dart';
import 'package:myapp/shared/domain/value_objects.dart';
import '../../shared/domain/failures.dart';
import '../../shared/domain/value_validators.dart';

class ProfilePicture extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProfilePicture(String input) {
    return ProfilePicture._(validateStringNotEmpty(input));
  }
  const ProfilePicture._(this.value);
}

class ProfileName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProfileName(String input) {
    return ProfileName._(validateStringNotEmpty(input));
  }

  const ProfileName._(this.value);
}

class ProfileLastName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProfileLastName(String input) {
    return ProfileLastName._(validateStringNotEmpty(input));
  }

  const ProfileLastName._(this.value);
}

class ProfilePhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProfilePhoneNumber(String input) {
    return ProfilePhoneNumber._(validateStringNotEmpty(input));
  }

  const ProfilePhoneNumber._(this.value);
}

class ProfileUserId extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory ProfileUserId(int input) {
    return ProfileUserId._(right(input));
  }

  const ProfileUserId._(this.value);
}

class ProfileWinegrowerId extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory ProfileWinegrowerId(int input) {
    return ProfileWinegrowerId._(right(input));
  }

  const ProfileWinegrowerId._(this.value);
}
