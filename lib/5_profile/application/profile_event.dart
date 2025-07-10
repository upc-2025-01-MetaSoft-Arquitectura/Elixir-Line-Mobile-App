import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.freezed.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.loaded(int userId) = ProfileLoaded;
  const factory ProfileEvent.updated(String imageUrl) = ProfilePictureUpdated;
}
