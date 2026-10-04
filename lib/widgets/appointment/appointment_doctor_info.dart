import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../../core/widgets/app_image.dart';

class AppointmentDoctorInfo extends StatelessWidget {
  const AppointmentDoctorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            AppAssets.doctorUpul,
            width: 132,
            height: 132,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: SizedBox(
            height: 112,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Dr.Upul',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    const AppImage(AppAssets.chatGreen, size: 30),
                    const SizedBox(width: 8),
                    const AppImage(AppAssets.phoneGreen, size: 30),
                    const SizedBox(width: 8),
                    const AppImage(AppAssets.videoGreen, size: 30),
                  ],
                ),
                const SizedBox(height: 2),
                const Text(
                  'Denteeth',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.lightTeal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payment',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '\$120.00',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.lightTeal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}