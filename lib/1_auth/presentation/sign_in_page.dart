import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/1_auth/application/sign_in_form/sign_in_form_bloc.dart';
import 'package:myapp/1_auth/presentation/widgets/auth_background.dart';
import 'package:myapp/1_auth/presentation/widgets/card_container.dart';
import 'package:myapp/1_auth/presentation/widgets/sign_in_form.dart';
import 'package:myapp/shared/presentation/colors.dart';
import '../../../injection.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Image.asset(
                    'assets/images/logo_app.png',
                    width: 130,
                    height: 130,
                  ),
                ),
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Hola! Bienvenido \nde nuevo a ElixirLine',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: AppColors.white,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Center(
                child: SizedBox(
                  width: 400,
                  child: CardContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Facilitamos tu trabajo diario en el campo, para lograr juntos un producto excepcional.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.cellarBrown.withAlpha(
                              (255 * 0.8).round(),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        BlocProvider(
                          create: (context) => getIt<SignInFormBloc>(),
                          child: const SignInForm(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
