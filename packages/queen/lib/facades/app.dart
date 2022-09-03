import 'package:flutter/material.dart';
import 'package:queen/queen.dart';

/// app facade
abstract class App {
  /// *  return the current app locale
  static Locale get locale => find<TransController>().locale;

  /// * setup needed controllers for the app
  /// * boots localization and theme

  static Future<void> boot({
    LangConfig nationsConfig = const LangConfig(),
  }) async {
    /// * will be used with Prefs facade

    final _transController = TransController(config: nationsConfig);

    Locators.put(_transController);

    /// waits for the controllers  to be booted
    await Future.wait([
      _transController.boot(),
    ]);
  }

  @protected
  @visibleForTesting
  static Future<void> dispose() async {
    // remove the controllers from the container
    Locators.clear();
  }
}
