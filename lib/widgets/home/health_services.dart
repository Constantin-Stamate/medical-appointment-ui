import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../common/section_title.dart';

class HealthServices extends StatelessWidget {
  const HealthServices({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      (AppAssets.tooth, 'Tooth'),
      (AppAssets.eye, 'Eye'),
      (AppAssets.lungs, 'Lungs'),
      (AppAssets.ear, 'Ear'),
    ];

    return Column(
      children: [
        const SectionTitle('Health Services'),
        const SizedBox(height: 18),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (final item in items)
              Column(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.soft,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(item.$1, fit: BoxFit.contain),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item.$2,
                    style: const TextStyle(fontSize: 14, color: AppColors.grey),
                  ),
                ],
              ),
          ],
        ),
      ],
    );
  }
}