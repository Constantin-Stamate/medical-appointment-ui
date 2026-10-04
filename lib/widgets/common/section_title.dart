import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final double fontSize;
  final double seeAllSize;
  final FontWeight seeAllWeight;
  final Color seeAllColor;

  const SectionTitle(
    this.title, {
    super.key,
    this.fontSize = 16,
    this.seeAllSize = 12,
    this.seeAllWeight = FontWeight.w500,
    this.seeAllColor = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w700,
            color: AppColors.dark,
          ),
        ),
        Text(
          'See All',
          style: TextStyle(
            fontSize: seeAllSize,
            color: seeAllColor,
            fontWeight: seeAllWeight,
            letterSpacing: seeAllSize * -0.02,
          ),
        ),
      ],
    );
  }
}