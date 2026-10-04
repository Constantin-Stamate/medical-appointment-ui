import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../../core/widgets/app_image.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.soft,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Row(
        children: [
          AppImage(AppAssets.search, size: 24),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              'Search something',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          AppImage(AppAssets.filter, size: 24),
        ],
      ),
    );
  }
}