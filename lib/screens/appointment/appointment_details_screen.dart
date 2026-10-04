import 'package:flutter/material.dart';

import '../../widgets/appointment/appointment_dates.dart';
import '../../widgets/appointment/appointment_details.dart';
import '../../widgets/appointment/appointment_doctor_info.dart';
import '../../widgets/appointment/appointment_header.dart';
import '../../widgets/appointment/book_appointment_button.dart';
import '../../widgets/appointment/working_hours.dart';

class AppointmentDetailsScreen extends StatefulWidget {
  const AppointmentDetailsScreen({super.key});

  @override
  State<AppointmentDetailsScreen> createState() =>
      _AppointmentDetailsScreenState();
}

class _AppointmentDetailsScreenState extends State<AppointmentDetailsScreen> {
  final hours = const ['10.00 AM', '11.00 AM', '12.00 PM', '01.00 PM'];

  final dates = const ['Sun 4', 'Mon 5', 'Tue 6', 'Wed 7'];

  int selectedHour = 1;
  int selectedDate = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppointmentHeader(onBack: () => Navigator.pop(context)),
                    const SizedBox(height: 20),
                    const AppointmentDoctorInfo(),
                    const SizedBox(height: 28),
                    const AppointmentDetails(),
                    const SizedBox(height: 28),
                    WorkingHours(
                      hours: hours,
                      selectedIndex: selectedHour,
                      onSelected: (index) {
                        setState(() {
                          selectedHour = index;
                        });
                      },
                    ),
                    const SizedBox(height: 24),
                    AppointmentDates(
                      dates: dates,
                      selectedIndex: selectedDate,
                      onSelected: (index) {
                        setState(() {
                          selectedDate = index;
                        });
                      },
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
            BookAppointmentButton(onPressed: _bookAppointment),
          ],
        ),
      ),
    );
  }

  void _bookAppointment() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Booked: ${dates[selectedDate]} at ${hours[selectedHour]}',
        ),
      ),
    );
  }
}