import 'package:dartz/dartz.dart';
import 'auth_failure.dart';
import 'user.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
  Option<User> getSignedInUser();

  Future<Either<AuthFailure, User>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<void> signOut();
}
