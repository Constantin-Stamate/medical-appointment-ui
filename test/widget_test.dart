import 'package:flutter_test/flutter_test.dart';
import 'package:medical_appointment_ui/app.dart';

void main() {
  testWidgets('application loads successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const DoctorApp());

    expect(find.text('Hi, Jonathan'), findsOneWidget);
    expect(find.text('Health Services'), findsOneWidget);
    expect(find.text('Nearby Doctor'), findsOneWidget);
    expect(find.text('Appointment'), findsOneWidget);
  });
}