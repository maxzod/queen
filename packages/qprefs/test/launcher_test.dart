import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qprefs/launcher.dart';

import 'config.dart';

void main() {
  testWidgets(
    'PrefsLauncher overrides one provider',
    (WidgetTester tester) async {
      WidgetsFlutterBinding.ensureInitialized();
      final launcher = PrefsLauncher();
      await launcher.boot();

      expect(
        launcher.overrides(),
        hasLength(1),
      );
    },
  );
}
