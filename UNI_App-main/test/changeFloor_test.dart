import 'package:flutter_test/flutter_test.dart';
import 'package:uni/addedByUs/menus/floor_menu.dart';
import 'package:flutter/material.dart';

void main() {
  void setFloor(String flr) {}

  testWidgets('DropUp menuFloor', (WidgetTester tester) async {
    final dropdownFinder = find.byKey(ValueKey('Floor menu'));
    await tester.pumpWidget(MaterialApp(home: FloorMenu(onChangedCallback: setFloor)));
    await tester.pump();

    expect(dropdownFinder, findsOneWidget);
  });

  testWidgets('DropUp menuFloor choose option', (WidgetTester tester) async {
    final dropdownFinder = find.byKey(ValueKey('Floor menu'));
    await tester.pumpWidget(MaterialApp(home: FloorMenu(onChangedCallback: setFloor)));
    await tester.tap(dropdownFinder);
    await tester.pumpAndSettle();

    final dropdownItem = find.text('0').last;

    await tester.tap(dropdownItem);
    await tester.pumpAndSettle();
  });
}