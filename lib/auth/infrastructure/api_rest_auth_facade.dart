import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:myapp/shared/infrastructure/token_storage.dart';
import '../domain/auth_failure.dart';
import '../domain/i_auth_facade.dart';
import '../domain/user.dart';
import '../domain/value_objects.dart';

@LazySingleton(as: IAuthFacade)
class RestAuthFacade implements IAuthFacade {
  User? _signedInUser;
  final TokenStorage _tokenStorage = TokenStorage();

  @override
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final email = emailAddress.getOrCrash();
    final pass = password.getOrCrash();
    try {
      final response = await http.post(
        Uri.parse(
          'https://elixirline-service-28111382458.us-west1.run.app/api/v1/authentication/sign-in',
        ),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'email': email, 'password': pass}),
      );

      if (response.statusCode == 200) {
        final user = User.fromJson(json.decode(response.body));
        _signedInUser = user;
        await _tokenStorage.saveToken(user.token);
        return right(user);
      } else {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
    } catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Option<User> getSignedInUser() {
    return optionOf(_signedInUser);
  }

  @override
  Future<void> signOut() async {
    await _tokenStorage.clearToken();
  }
}
