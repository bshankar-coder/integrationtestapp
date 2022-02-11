import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:integrationtestapp/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end testing', () {
    testWidgets('tap on floating action button, verify counter',
            (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Verify the counter starts 0
      expect(find.text('0'), findsOneWidget);

      // Finds the FAB(Floating Action Button) to tap
      // final Finder fab = find.byKey(const ValueKey('increment'));
      final Finder fab = find.byTooltip('Increment');

      // Emulate a tap on FAB
      await tester.tap(fab);

      // Trigger a frame
      await tester.pumpAndSettle();

      // Verify the counter increments by 1
      expect(find.text('1'), findsOneWidget);

      await tester.tap(fab);

      await tester.pumpAndSettle();

      expect(find.text('2'), findsOneWidget);

    });
  });
}