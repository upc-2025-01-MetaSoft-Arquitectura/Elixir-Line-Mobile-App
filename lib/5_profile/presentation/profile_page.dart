import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/1_auth/application/auth_bloc.dart';
import 'package:myapp/1_auth/application/auth_event.dart';
import 'package:myapp/5_profile/application/profile_bloc.dart';
import 'package:myapp/5_profile/application/profile_event.dart';
import 'package:myapp/5_profile/application/profile_state.dart';
import 'package:myapp/5_profile/domain/i_profile_repository.dart';
import 'package:myapp/shared/infrastructure/auth_storage.dart';
import 'package:myapp/shared/presentation/colors.dart';
import 'widgets/profile_header.dart';
import 'package:myapp/injection.dart';
import 'widgets/profile_details.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<({int? userId, String? email})>(
      future: Future.wait([
        AuthStorage().getUserId(),
        AuthStorage().getUserEmail(),
      ]).then(
        (results) => (userId: results[0] as int?, email: results[1] as String?),
      ),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return BlocProvider(
            create:
                (context) =>
                    ProfileBloc(getIt<IProfileRepository>())
                      ..add(ProfileEvent.loaded(snapshot.data!.userId!)),
            child: _ProfileView(email: snapshot.data!.email),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error loading user data: ${snapshot.error}'),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class _ProfileView extends StatelessWidget {
  final String? email;
  const _ProfileView({required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return state.profile.fold(
            () => const Center(child: Text('No se pudo cargar el perfil')),
            (profile) => SingleChildScrollView(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ProfileHeader(profile: profile, email: email),
                      ProfileDetails(profile: profile, email: email),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: SizedBox(
                          width: 200,
                          child: ElevatedButton(
                            onPressed:
                                () => context.read<AuthBloc>().add(
                                  const AuthEvent.signedOut(),
                                ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.metallicGold,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              elevation: 2,
                              shadowColor: Colors.black.withAlpha(
                                (255 * 0.1).round(),
                              ),
                            ),
                            child: Text(
                              'Cerrar Sesión',
                              style: GoogleFonts.lato(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
