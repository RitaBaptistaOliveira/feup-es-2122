import 'package:flutter_test/flutter_test.dart';
import 'package:uni/addedByUs/menus/department_menu.dart';
import 'package:flutter/material.dart';

void main() {

  void setDepartment(String dep) {}
  void toggleMapZoom() {}
  bool aux;

  testWidgets('Dropdown menu', (WidgetTester tester) async {
    final dropdownFinder = find.byKey(ValueKey('Department menu'));
    await tester.pumpWidget(MaterialApp(home: DepartmentMenu(onChangedCallback: setDepartment)));
    await tester.pump();

    expect(dropdownFinder, findsOneWidget);
  });

  testWidgets('Dropdown choose option', (WidgetTester tester) async {
    final dropdownFinder = find.byKey(ValueKey('Department menu'));
    await tester.pumpWidget(MaterialApp(home: DepartmentMenu(onChangedCallback: setDepartment)));
    await tester.tap(dropdownFinder);
    await tester.pumpAndSettle();

    final dropdownItem = find.text('Civil').last;

    await tester.tap(dropdownItem);
    await tester.pumpAndSettle();
  });
/*
  testWidgets('Zoom in button', (WidgetTester tester) async {
    final dropdownFinder = find.byKey(ValueKey('Zoom in Button'));
    await tester.pumpWidget(MaterialApp(home: SearchIcon(
      zoomCallback: toggleMapZoom,
      isSelected: aux)));
    await tester.pump();

    expect(dropdownFinder, findsOneWidget);
  });
*/
}
