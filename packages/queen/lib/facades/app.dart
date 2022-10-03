import 'package:flutter/material.dart';
import 'package:queen/queen.dart';

/// app facade
abstract class App {
  /// *  return the current app locale
  static Locale get locale => find<TransController>().locale;

  @protected
  @visibleForTesting
  static Future<void> dispose() async {
    // remove the controllers from the container
    Locators.clear();
  }
}
