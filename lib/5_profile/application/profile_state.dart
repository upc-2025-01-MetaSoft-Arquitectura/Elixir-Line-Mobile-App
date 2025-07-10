import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/profile.dart';
import '../domain/profile_failure.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isLoading,
    required bool isUpdating,
    required Option<Profile> profile,
    required Option<ProfileFailure> failure,
    required bool updateSuccess,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
    isLoading: false,
    isUpdating: false,
    profile: none(),
    failure: none(),
    updateSuccess: false,
  );
}
