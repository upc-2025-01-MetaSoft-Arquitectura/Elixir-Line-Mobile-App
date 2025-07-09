import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/5-profile/domain/profile.dart';
import 'package:myapp/shared/presentation/colors.dart';

class ProfileDetails extends StatelessWidget {
  final Profile profile;
  final String? email;

  const ProfileDetails({super.key, required this.profile, required this.email});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildDetail(title: 'Correo electrónico', value: email ?? ''),
          _buildDetail(
            title: 'Teléfono',
            value: profile.phoneNumber.getOrCrash(),
          ),
        ],
      ),
    );
  }

  Widget _buildDetail({required String title, required String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.lato(
              fontSize: 14,
              color: AppColors.slateGray,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: GoogleFonts.lato(
              fontSize: 16,
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
