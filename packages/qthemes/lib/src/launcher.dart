import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qthemes/src/provider.dart';
import 'package:queen/queen.dart';

class QThemeLauncher extends Launcher {
  final ThemeConfig config;

  QThemeLauncher(this.config);
  @protected
  Override? themesOverride;

  @override
  Future<void> boot() async {
    final themeController = await ThemeController(config: config);
    await themeController.boot();
    themesOverride = themesProvider.overrideWithValue(themeController);
  }

  @override
  List<Override> overrides() {
    return [
      if (themesOverride != null) themesOverride!,
    ];
  }
}
