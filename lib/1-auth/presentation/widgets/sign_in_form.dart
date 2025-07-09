import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/1-auth/application/sign_in_form/sign_in_form_state.dart';
import 'package:myapp/1-auth/domain/auth_failure.dart';
import 'package:myapp/routes/app_router.gr.dart';
import 'package:myapp/shared/presentation/colors.dart';
import '../../application/sign_in_form/sign_in_form_bloc.dart';
import '../../application/sign_in_form/sign_in_form_event.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(_mapFailureToMessage(failure))),
            ),
            (_) {
              AutoRouter.of(context).replace(const ProfileRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: _inputDecoration('Correo electrónico'),
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              onChanged: (value) => context.read<SignInFormBloc>().add(SignInFormEvent.emailChanged(value)),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: _inputDecoration('Contraseña').copyWith(
                suffixIcon: IconButton(
                  icon: Icon(
                    _showPassword ? Icons.visibility_off : Icons.visibility,
                    color: AppColors.cellarBrown,
                  ),
                  onPressed: () => setState(() => _showPassword = !_showPassword),
                ),
              ),
              obscureText: !_showPassword,
              onChanged: (value) => context.read<SignInFormBloc>().add(SignInFormEvent.passwordChanged(value)),
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.wineRed,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: state.isSubmitting
                    ? null
                    : () => context.read<SignInFormBloc>().add(const SignInFormEvent.signInPressed()),
                child: state.isSubmitting
                    ? const CircularProgressIndicator(color: AppColors.white)
                    : Text('Iniciar Sesión',
                        style: GoogleFonts.openSans(
                            fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.white)),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                '¿Problemas para acceder? Contacta a tu supervisor.',
                style: GoogleFonts.openSans(fontSize: 12, color: AppColors.slateGray),
              ),
            ),
          ],
        );
      },
    );
  }

  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: GoogleFonts.openSans(color: AppColors.cellarBrown),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.metallicGold, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      filled: true,
      fillColor: AppColors.white,
    );
  }

  String _mapFailureToMessage(AuthFailure failure) {
    return failure.when(
      cancelledByUser: () => 'Operación cancelada.',
      serverError: () => 'Error del servidor. Intenta nuevamente.',
      invalidEmailAndPasswordCombination: () => 'Correo o contraseña incorrectos.',
    );
  }
}