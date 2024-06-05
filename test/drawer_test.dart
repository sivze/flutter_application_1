import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Navigation Drawer opens and closes', (WidgetTester tester) async {
    // Build the Main Screen and trigger a frame.
    await tester.pumpWidget(const MainScreen());

    // Find the navigation drawer button and tap it.
    final drawerButton = find.byIcon(Icons.menu);
    await tester.tap(drawerButton);
    await tester.pump();

    // Verify that the navigation drawer is open.
    expect(find.byType(Drawer), findsOneWidget);

    // Tap the drawer button again to close the drawer.
    await tester.tap(drawerButton);
    await tester.pump();

    // Verify that the navigation drawer is closed.
    expect(find.byType(Drawer), findsNothing);
  });

  testWidgets('Navigation Drawer navigates to Home Page', (WidgetTester tester) async {
    // Build the Main Screen and trigger a frame.
    await tester.pumpWidget(const MainScreen());

    // Find the navigation drawer button and tap it.
    final drawerButton = find.byIcon(Icons.menu);
    await tester.tap(drawerButton);
    await tester.pump();

    // Find the Home item in the navigation drawer and tap it.
    final homeItem = find.text('Home');
    await tester.tap(homeItem);
    await tester.pump();

    // Verify that the Home Page is displayed.
    expect(find.text('Home Page'), findsOneWidget);
  });

  testWidgets('Navigation Drawer navigates to Favorites Page', (WidgetTester tester) async {
    // Build the Main Screen and trigger a frame.
    await tester.pumpWidget(const MainScreen());

    // Find the navigation drawer button and tap it.
    final drawerButton = find.byIcon(Icons.menu);
    await tester.tap(drawerButton);
    await tester.pump();

    // Find the Favorites item in the navigation drawer and tap it.
    final favoritesItem = find.text('Favorites');
    await tester.tap(favoritesItem);
    await tester.pump();

    // Verify that the Favorites Page is displayed.
    expect(find.text('Favorite'), findsOneWidget);
  });
}
