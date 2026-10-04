import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';
import '../common/section_title.dart';
import 'doctor_tile.dart';

class NearbyDoctors extends StatelessWidget {
  const NearbyDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SectionTitle('Nearby Doctor'),
        SizedBox(height: 18),
        DoctorTile(
          image: AppAssets.doctorEmmly,
          name: 'Dr. Emmly Lestiryno',
          role: 'General Practitioner',
          address: '3167 Durgan Shores - 500M from you',
        ),
        SizedBox(height: 16),
        DoctorTile(
          image: AppAssets.doctorSonja,
          name: 'Dr. Sonja Littel',
          role: 'Dental Specialist',
          address: '950 Sigrid Port - 753M from you',
        ),
      ],
    );
  }
}