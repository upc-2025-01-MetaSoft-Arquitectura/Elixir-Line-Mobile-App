import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:myapp/shared/domain/api_constants.dart';
import 'package:myapp/shared/infrastructure/auth_storage.dart';
import '../domain/auth_failure.dart';
import '../domain/i_auth_facade.dart';
import '../domain/user.dart';
import '../domain/value_objects.dart';

@LazySingleton(as: IAuthFacade)
class RestAuthFacade implements IAuthFacade {
  final AuthStorage _authStorage = AuthStorage();

  @override
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final email = emailAddress.getOrCrash();
    final pass = password.getOrCrash();
    try {
      final response = await http.post(
        Uri.parse('${ApiConstants.baseUrl}/authentication/sign-in'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'email': email, 'password': pass}),
      );

      if (response.statusCode == 200) {
        final user = User.fromJson(json.decode(response.body));
        await _authStorage.saveAuthData(
          token: user.token,
          userId: user.id,
          email: user.email,
        );
        print('Datos guardados: ${user.id}, ${user.email}, ${user.token}');
        return right(user);
      } else {
        print('Error en la autenticación: ${response.statusCode}');
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
    } catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<User>> getSignedInUser () async {
    final userId = await _authStorage.getUserId();
    final email = await _authStorage.getUserEmail();
    final token = await _authStorage.getToken();

    if (userId != null && email != null && token != null) {
      return some(User(id: userId, email: email, token: token));
    } else {
      return none();
    }
  }

  @override
  Future<void> signOut() async {
    await _authStorage.clear(); 
  }
}
