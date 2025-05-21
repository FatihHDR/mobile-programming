import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mobile_m1/app/modules/home/views/home_view.dart';

void main() {
  testWidgets('Counter increments test', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(
      GetMaterialApp(
        home: HomeView(),
      ),
    );

    // Verify initial counter value
    expect(find.text('Counter: 0'), findsOneWidget);
    
    // Tap the '+' icon and trigger a frame
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    
    // Verify that the counter has incremented
    expect(find.text('Counter: 1'), findsOneWidget);
  });
}