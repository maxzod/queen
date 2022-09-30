import 'dart:async';

import 'package:queen/queen.dart';

class QThemeLauncher extends Launcher {
  final ThemeConfig config;

  QThemeLauncher(this.config);

  @override
  Future<void> boot() async => Locators.put<ThemeController>(
        await ThemeController(config: config)
          ..boot(),
      );
}
