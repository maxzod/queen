import 'dart:async';

import 'package:qthemes/qthemes.dart';
import 'package:queen/queen.dart';

class  ThemeLauncher extends Launcher {
  final ThemeConfig config;

  ThemeLauncher(this.config);

  @override
  FutureOr<void> boot() async => Locators.put<ThemeController>(
        await ThemeController(config: config)
          ..boot(),
      );
}
