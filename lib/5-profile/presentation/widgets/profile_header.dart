import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/5-profile/application/profile_bloc.dart';
import 'package:myapp/5-profile/application/profile_event.dart';
import 'package:myapp/5-profile/domain/profile.dart';
import 'package:myapp/5-profile/infrastructure/profile_upload_profile_picture.dart';
import 'package:myapp/shared/presentation/colors.dart';

class ProfileHeader extends StatelessWidget {
  final Profile profile;
  final String? email;
  const ProfileHeader({super.key, required this.profile, required this.email});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48.0, bottom: 24.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey.shade200,
            backgroundImage: profile.profilePicture.value.fold(
              (_) => null,
              (url) => url.isNotEmpty
                  ? NetworkImage(url)
                  : const NetworkImage(
                      "https://img.freepik.com/free-vector/blue-circle-with-white-user_78370-4707.jpg?semt=ais_hybrid&w=740",
                    ),
            ),
          ),
          const SizedBox(height: 5),
            ElevatedButton.icon(
              onPressed: () => uploadProfilePicture(
                context: context,
                profile: profile,
                onSuccess: () {
                  // Refrescar perfil
                  context.read<ProfileBloc>().add(ProfileEvent.loaded(profile.userId));
                },
              ),
              icon: const Icon(Icons.upload, size: 18),
              label: const Text('Actualizar Foto'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.white,
                foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          const SizedBox(height: 40),
          Text(
            profile.name.getOrCrash(),
            style: GoogleFonts.lato(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            profile.lastname.getOrCrash(),
            style: GoogleFonts.lato(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColors.slateGray,
            ),
          ),
        ],
      ),
    );
  }
}
