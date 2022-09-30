import 'package:flutter/material.dart';
import 'package:qthemes/src/provider.dart';
import 'package:queen/queen.dart';

/// facade for the theme features
abstract class AppTheme {
  /// shortcut for the rest of the functions
  static ThemeController get controller => App.container.read(themesProvider);

  /// return current app theme
  static ThemeData get current => controller.currentTheme;

  /// return current theme index
  static int get index => controller.currentIndex;

  /// return current `QTheme`
  static QTheme get qTheme => controller.currentQTheme;

  static String get name => controller.currentQTheme.name;

  /// return current `QTheme` id
  static String get id => controller.currentQTheme.id;

  /// return list of supported QThemes
  static List<QTheme> get supportedThemes => controller.config.themes;

  /// update theme to use the given one
  static Future<void> updateTo(
    QTheme theme,
  ) =>
      controller.updateTo(theme);

  /// updates the app theme by the name
  /// if there is no theme it will do nothing
  static Future<void> updateByName(
    String name,
  ) =>
      controller.updateThemeByName(name);

  /// updates the app theme by the name
  /// ! if there is no theme by that name , it will throw
  // static Future<void> updateByNameOrThrow(
  //   String name,
  // ) =>
  //     _controller.updateThemeByName(name);

  /// updates the app theme by the index
  /// if index is out of range , it will do nothing
  static Future<void> updateByIndex(
    int index,
  ) =>
      controller.updateByIndex(index);

  /// updates the app theme by the index
  /// if index is out of range , it will do nothing
  static Future<void> next() => controller.nextTheme();

  /// updates the app theme by the name
  /// !if index is out of range , it will throw
  static Future<void> updateByIndexOrThrow(
    int index,
  ) =>
      controller.updateByIndexOrThrow(index);
}
