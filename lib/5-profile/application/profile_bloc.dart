import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/5-profile/application/profile_event.dart';
import 'package:myapp/5-profile/application/profile_state.dart';
import 'package:myapp/5-profile/domain/i_profile_repository.dart';
import 'package:myapp/5-profile/domain/profile_failure.dart';
import 'package:myapp/5-profile/domain/value_objects.dart';
import 'package:myapp/5-profile/domain/profile.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileRepository _profileRepository;

  ProfileBloc(this._profileRepository) : super(ProfileState.initial()) {
    on<ProfileLoaded>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final failureOrProfile = await _profileRepository.getProfile(event.userId);
      emit(_handleProfileResponse(failureOrProfile));
    });

    on<ProfilePictureUpdated>((event, emit) async {
      emit(state.copyWith(isUpdating: true));
      final profile = state.profile;
      final currentProfile = profile.getOrElse(() => Profile.empty());
      final failureOrSuccess = await _profileRepository.updateProfilePicture(
        currentProfile.id,
        event.imageUrl,
      );
      emit(_handleUpdateResponse(failureOrSuccess, event.imageUrl));
    });
  }

  ProfileState _handleProfileResponse(Either<ProfileFailure, Profile> failureOrProfile) {
    return failureOrProfile.fold(
      (failure) {
        return state.copyWith(isLoading: false, failure: some(failure), profile: none());
      },
      (profile) {
        return state.copyWith(isLoading: false, profile: some(profile));
      },
    );
  }

  ProfileState _handleUpdateResponse(Either<ProfileFailure, Unit> failureOrSuccess, String imageUrl) {
    return failureOrSuccess.fold(
      (failure) => state.copyWith(isUpdating: false, failure: some(failure)),
      (_) {
        final currentProfile = state.profile.getOrElse(() => Profile.empty());
        return state.copyWith(
          isUpdating: false,
          updateSuccess: true,
          profile: some(currentProfile.copyWith(profilePicture: ProfilePicture(imageUrl))),
        );
      },
    );
  }
}
