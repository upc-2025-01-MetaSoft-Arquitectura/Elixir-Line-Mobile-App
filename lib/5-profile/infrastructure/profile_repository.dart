import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:myapp/5-profile/domain/i_profile_repository.dart';
import 'package:myapp/5-profile/domain/profile_failure.dart';
import 'package:myapp/5-profile/domain/profile.dart';
import 'package:myapp/shared/infrastructure/auth_storage.dart';
import 'package:myapp/shared/domain/api_constants.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final AuthStorage _authStorage = AuthStorage();

  @override
  Future<Either<ProfileFailure, Profile>> getProfile(int userId) async {
    final token = await _authStorage.getToken();
    try {
      final response = await http.get(
        Uri.parse('${ApiConstants.baseUrl}/fieldworkers/user/$userId'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        print('Datos del perfil: $data');
        final profile = Profile.fromJson(data);

        await _authStorage.saveAuthData(
          token: token!,
          userId: userId,
          email: await _authStorage.getUserEmail() ?? '',
          winegrowerId: profile.winegrowerId,
          fieldWorkerId: profile.id,
        );

        return right(profile);
      } else {
        print('Error al cargar el perfil: ${response.statusCode}');
        return left(const ProfileFailure.unexpected());
      }
    } catch (e) {
      return left(const ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> updateProfilePicture(
    int fieldWorkerId, 
    String imageUrl
  ) async {
    try {
      final profileResult = await getProfile(fieldWorkerId);

      return profileResult.fold(
        (failure) => left(failure),
        (currentProfile) async {
          final token = await _authStorage.getToken();
          if (token == null) {
            return left(const ProfileFailure.unauthenticated());
          }

          final requestBody = {
            'name': currentProfile.name.getOrCrash(),
            'lastname': currentProfile.lastname.getOrCrash(),
            'phoneNumber': currentProfile.phoneNumber.getOrCrash(),
            'winegrowerId': currentProfile.winegrowerId,
            'status': currentProfile.status,
            'image': imageUrl,
          };

          final response = await http.put(
            Uri.parse('${ApiConstants.baseUrl}/fieldworkers/$fieldWorkerId'),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $token',
            },
            body: json.encode(requestBody),
          );

          if (response.statusCode == 200) {
            return right(unit);
          } else {
            return left(const ProfileFailure.unableToUpdate());
          }
        },
      );
    } catch (e) {
      return left(const ProfileFailure.unexpected());
    }
  }
}