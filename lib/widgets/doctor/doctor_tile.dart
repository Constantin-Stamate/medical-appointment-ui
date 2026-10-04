import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../../core/widgets/app_image.dart';

class DoctorTile extends StatelessWidget {
  final String image;
  final String name;
  final String role;
  final String address;

  const DoctorTile({
    super.key,
    required this.image,
    required this.name,
    required this.role,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipOval(
          child: Image.asset(image, width: 46, height: 46, fit: BoxFit.cover),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.dark,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                role,
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const AppImage(AppAssets.location, size: 18),
                  const SizedBox(width: 4),
                  Flexible(
                    child: Text(
                      address,
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.dark,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const AppImage(AppAssets.heart, size: 20),
      ],
    );
  }
}