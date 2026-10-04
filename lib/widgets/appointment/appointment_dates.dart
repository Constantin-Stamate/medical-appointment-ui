import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../common/section_title.dart';

class AppointmentDates extends StatelessWidget {
  final List<String> dates;
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  const AppointmentDates({
    super.key,
    required this.dates,
    required this.selectedIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(
          'Date',
          fontSize: 22,
          seeAllSize: 16,
          seeAllWeight: FontWeight.w400,
          seeAllColor: Colors.black,
        ),
        const SizedBox(height: 14),
        SizedBox(
          height: 48,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: dates.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (_, index) {
              final isSelected = index == selectedIndex;

              return GestureDetector(
                onTap: () => onSelected(index),
                child: Container(
                  width: 96,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isSelected ? AppColors.button : AppColors.soft,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    dates[index],
                    style: TextStyle(
                      fontSize: 15,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}