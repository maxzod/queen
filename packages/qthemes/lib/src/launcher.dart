import 'dart:async';

import 'package:qthemes/qthemes.dart';
import 'package:queen/queen.dart';

class QThemeLauncher extends Launcher {
  final ThemeConfig config;

  QThemeLauncher(this.config);

  @override
  void register() {
    Locators.put(ThemeController(config: config));
  }

  @override
  FutureOr<void> boot() async => find<ThemeController>().boot();
}
