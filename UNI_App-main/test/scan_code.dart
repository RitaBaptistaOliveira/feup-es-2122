import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:uni/addedByUs/localization/qr_code.dart';

void main() {
  testWidgets('Starts QR code', (WidgetTester tester) async {
    final dropdownFinder = find.byKey(ValueKey('Qr code'));
    await tester.pumpWidget(MaterialApp(home: QRViewExample()));
    await tester.pump();

    expect(dropdownFinder, findsOneWidget);
  });
}