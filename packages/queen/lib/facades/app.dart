import 'package:flutter/material.dart';
import 'package:queen/queen.dart';

/// app facade
abstract class App {
  /// *  return the current app locale
  static Locale get locale => Locators.find<TransController>().locale;

  /// * setup needed controllers for the app
  /// * boots localization and theme

  static Future<void> boot({
    LangConfig nationsConfig = const LangConfig(),
    ThemeConfig themeConfig = const ThemeConfig(),
  }) async {
    /// * will be used with Prefs facade
    final _prefs = await SharedPreferences.getInstance();

    final _themeController = ThemeController(config: themeConfig);
    final _transController = TransController(config: nationsConfig);

    /// * register onjects inside `get_it` container
    Locators.put(_prefs);
    Locators.put(_themeController);
    Locators.put(_transController);

    /// waits for the controllers  to be booted
    await Future.wait([
      _themeController.boot(),
      _transController.boot(),
    ]);
  }

  @protected
  @visibleForTesting
  static Future<void> dispose() async {
    // remove the controllers from the container
    await Locators.reset();
  }
}
