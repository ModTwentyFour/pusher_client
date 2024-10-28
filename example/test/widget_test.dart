// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/main.dart';

void main() {
  testWidgets('Verify Platform version', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    final MyAppState myAppState =
    tester.state(find.byType(MyApp));

    expect(myAppState.channel.name, 'private-orders');

    await tester.tap(find.byKey(Key('SB')));
    await tester.pump();

    expect(myAppState.newSubscription.name, 'private-product');
  });
}
