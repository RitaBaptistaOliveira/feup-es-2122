import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:uni/addedByUs/menus/spots_menu.dart';

void main() {
  void setSpot(String spt) {}

  testWidgets('DropUp menuSpot', (WidgetTester tester) async {
    final dropdownFinder = find.byKey(ValueKey('Spots menu'));
    await tester.pumpWidget(MaterialApp(home: SpotsMenu(onChangedCallback: setSpot)));
    await tester.pump();

    expect(dropdownFinder, findsOneWidget);
  });

  testWidgets('DropUp menuSpot choose option', (WidgetTester tester) async {
    final dropdownFinder = find.byKey(ValueKey('Spots menu'));
    await tester.pumpWidget(MaterialApp(home: SpotsMenu(onChangedCallback: setSpot)));
    await tester.tap(dropdownFinder);
    await tester.pumpAndSettle();

    final dropdownItem = find.text('Café').last;

    await tester.tap(dropdownItem);
    await tester.pumpAndSettle();
  });
}


