import 'package:flutter/material.dart';
import 'package:queen/queen.dart';

/// app facade
abstract class App {
  static SharedPreferences get prefs => Locators.find<SharedPreferences>();

  static Locale get locale {
    return Locators.find<TransController>().locale;
  }

  /// boots localization and theme
  static Future<void> boot({
    NationsConfig nationsConfig = const NationsConfig(),
    ThemeConfig themeConfig = const ThemeConfig(),
  }) async {
    final _prefs = await SharedPreferences.getInstance();
    final _themeController = ThemeController(config: themeConfig);
    final _transController = TransController(config: nationsConfig);
    Locators.put(_prefs);
    Locators.put(_themeController);
    Locators.put(_transController);
    await _themeController.boot();
    await _transController.boot();
  }

  @protected
  @visibleForTesting
  static Future<void> dispose() async {
    await Locators.reset();
  }
}
