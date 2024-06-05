import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('MyApp builds with expected MaterialApp properties', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that MyApp creates a MaterialApp with the correct title.
    expect(find.byType(MaterialApp), findsOneWidget);
    final MaterialApp materialApp = tester.widget(find.byType(MaterialApp));
    expect(materialApp.title, 'Navigation Example');

    // Verify that the home of MaterialApp is MainScreen.
    expect(materialApp.home.runtimeType, equals(MainScreen));
  });
}
