import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_form_event.freezed.dart';

@freezed
sealed class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignInFormEvent.signInPressed() = SignInPressed;
}
