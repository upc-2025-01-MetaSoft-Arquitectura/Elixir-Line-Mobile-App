import 'package:dartz/dartz.dart';
import 'package:myapp/5-profile/domain/profile_failure.dart';
import 'package:myapp/5-profile/domain/profile.dart';

abstract class IProfileRepository {
  Future<Either<ProfileFailure, Profile>> getProfile(int userId);
  Future<Either<ProfileFailure, Unit>> updateProfilePicture(
    int fieldWorkerId, 
    String imageUrl
  );
}