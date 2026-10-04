import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../../core/widgets/app_image.dart';

class AppointmentHeader extends StatelessWidget {
  final VoidCallback onBack;

  const AppointmentHeader({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: onBack,
              child: const AppImage(AppAssets.back, size: 21),
            ),
          ),
          const Text(
            'Appointment',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: AppColors.button,
            ),
          ),
        ],
      ),
    );
  }
}