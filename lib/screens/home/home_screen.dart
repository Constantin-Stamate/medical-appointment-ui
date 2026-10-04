import 'package:flutter/material.dart';

import '../../widgets/appointment/appointment_card.dart';
import '../../widgets/doctor/nearby_doctors.dart';
import '../../widgets/home/health_services.dart';
import '../../widgets/home/home_header.dart';
import '../../widgets/home/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeHeader(),
              SizedBox(height: 24),
              HomeSearchBar(),
              SizedBox(height: 24),
              AppointmentCard(),
              SizedBox(height: 24),
              HealthServices(),
              SizedBox(height: 24),
              NearbyDoctors(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}