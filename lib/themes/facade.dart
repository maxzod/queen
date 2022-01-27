import 'package:flutter/material.dart';
import 'package:queen/locators.dart';
import 'package:queen/themes.dart';

/// facade for the theme features
class AppTheme {
  // to prevent any one from creating instance of this facade
  AppTheme._();

  static ThemeController get _controller => Locators.find<ThemeController>();

  /// return current app theme
  static ThemeData get current => _controller.currentTheme;

  /// return current theme index
  static int get index => _controller.currentIndex;

  /// return current `QTheme`
  static QTheme get qTheme => _controller.currentQTheme;
  static List<QTheme> get supportedThemes => _controller.config.themes;
  static Future<void> updateTo(
    QTheme theme,
  ) =>
      _controller.updateTo(theme);

  /// updates the app theme by the name
  /// if there is no theme it will do nothing
  static Future<void> updateByName(
    String name,
  ) =>
      _controller.updateThemeByName(name);

  /// updates the app theme by the name
  /// ! if there is no theme by that name , it will throw
  static Future<void> updateByNameOrThrow(
    String name,
  ) =>
      _controller.updateThemeByName(name);

  /// updates the app theme by the index
  /// if index is out of range , it will do nothing
  static Future<void> updateByIndex(
    int index,
  ) =>
      _controller.updateByIndex(index);

  /// updates the app theme by the index
  /// if index is out of range , it will do nothing
  static Future<void> next() => _controller.nextTheme();

  /// updates the app theme by the name
  /// !if index is out of range , it will throw
  static Future<void> updateByIndexOrThrow(
    int index,
  ) =>
      _controller.updateByIndexOrThrow(index);
}