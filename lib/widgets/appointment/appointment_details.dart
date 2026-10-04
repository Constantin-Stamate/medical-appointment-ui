import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class AppointmentDetails extends StatelessWidget {
  const AppointmentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Details',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),
        Text(
          'Worem ipsum dolor sit amet, consectetur adipiscing elit. Nunc '
          'vulputate libero et velit interdum, ac aliquet odio mattis. Class '
          'aptent taciti sociosqu ad litora torquent per conubia nostra, per '
          'inceptos himenaeos. Curabitur tempus urna at turpis condimentum '
          'lobortis. Ut commodo efficitur neque. Ut diam quam, semper iaculis '
          'condimentum ac, vestibulum eu nisl.',
          style: TextStyle(
            fontSize: 13,
            color: AppColors.grey,
            height: 1.5,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}