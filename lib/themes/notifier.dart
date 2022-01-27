import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_readable/flutter_readable.dart';
import 'package:queen/facade.dart';

import 'models.dart';

/// queen base theme controller
class ThemeController extends ChangeNotifier {
  ThemeController({
    required this.config,
  });

  final ThemeConfig config;

  QTheme? _current;

  /// current theme
  ThemeData get currentTheme => currentQTheme.theme;

  ///
  QTheme get currentQTheme => _current ?? config.themes.first;

  /// current theme index
  int get currentIndex => config.themes.indexOf(currentQTheme);

  /// set up the base controller
  Future<void> boot() async {
    final lastKnownIndex = App.prefs.getInt('queen.theme.index') ?? 0;

    /// *
    _current = config.themes[lastKnownIndex];
  }

  /// update the theme to one of the theme list by index

  /// update the theme to one of the theme list by index
  Future<void> updateTo(QTheme theme) async {
    _current = theme;
    await App.prefs.setInt('queen.theme.index', currentIndex);
    notifyListeners();
  }

  /// switch the theme to the next in the list
  /// if there is no next theme, it will switch to the first one
  Future<void> nextTheme() async {
    final isLastTheme = currentIndex == config.themes.length - 1;
    await updateByIndexOrThrow(isLastTheme ? 0 : currentIndex + 1);
  }

  Future<void> updateThemeByName(String name) async {
    final theme = config.themes.firstWhereOrNull(
      (e) => e.name.toLowerCase() == name.toLowerCase(),
    );

    if (theme != null) {
      await updateTo(theme);
    }
  }

  Future<void> updateByIndex(int index) async {
    try {
      return updateByIndexOrThrow(index);
    } catch (e) {
      if (e is RangeError) {
        log("cant update theme to $index since there is only ${config.themes.length} themes");
      } else {
        rethrow;
      }
    }
  }

  Future<void> updateByIndexOrThrow(int index) async {
    _current = config.themes[index];
    await App.prefs.setInt('queen.theme.index', index);
    notifyListeners();
  }
}
