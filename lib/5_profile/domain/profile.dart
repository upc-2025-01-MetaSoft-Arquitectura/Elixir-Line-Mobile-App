import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/5_profile/domain/value_objects.dart';
part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
abstract class Profile with _$Profile {
  const factory Profile({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'userId') required int userId,
    @JsonKey(
      name: 'name',
      fromJson: profileNameFromJson,
      toJson: profileNameTojson,
    )
    required ProfileName name,
    @JsonKey(
      name: 'lastname',
      fromJson: profileLastNameFromJson,
      toJson: profileLastNameToJson,
    )
    required ProfileLastName lastname,
    @JsonKey(
      name: 'phoneNumber',
      fromJson: profilePhoneNumberFromJson,
      toJson: profilePhoneNumberToJson,
    )
    required ProfilePhoneNumber phoneNumber,
    @JsonKey(
      name: 'profilePicture',
      fromJson: profilePictureFromJson,
      toJson: profilePictureToJson,
    )
    required ProfilePicture profilePicture,
    @JsonKey(name: 'winegrowerId') required int winegrowerId,
    @JsonKey(name: 'status') required String status,
  }) = _Profile;

  factory Profile.empty() => Profile(
    id: 0,
    userId: 0,
    name: ProfileName(''),
    lastname: ProfileLastName(''),
    phoneNumber: ProfilePhoneNumber(''),
    profilePicture: ProfilePicture(''),
    winegrowerId: 0,
    status: '',
  );
  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

ProfileName profileNameFromJson(String json) => ProfileName(json);
String profileNameTojson(ProfileName object) => object.getOrCrash();

ProfileLastName profileLastNameFromJson(String json) => ProfileLastName(json);
String profileLastNameToJson(ProfileLastName object) => object.getOrCrash();

ProfilePhoneNumber profilePhoneNumberFromJson(String json) =>
    ProfilePhoneNumber(json);
String profilePhoneNumberToJson(ProfilePhoneNumber object) =>
    object.getOrCrash();

ProfilePicture profilePictureFromJson(String json) => ProfilePicture(json);
String profilePictureToJson(ProfilePicture object) => object.getOrCrash();

ProfileUserId profileUserIdFromJson(int json) => ProfileUserId(json);
int profileUserIdToJson(ProfileUserId object) => object.getOrCrash();

ProfileWinegrowerId profileWinegrowerIdFromJson(int json) =>
    ProfileWinegrowerId(json);
int profileWinegrowerIdToJson(ProfileWinegrowerId object) =>
    object.getOrCrash();
