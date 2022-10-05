import 'package:flutter/material.dart';
import 'package:queen/queen.dart';

/// app facade
abstract class App {
  @protected
  @visibleForTesting
  static Future<void> dispose() async {
    // remove the controllers from the container
    Locators.clear();
  }
}
