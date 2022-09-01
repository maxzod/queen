import 'package:flutter/material.dart';
import 'package:queen/queen.dart';
import 'package:queen_thems/config.dart';

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
    final lastKnownIndex = Prefs.getInt('queen.theme.index');

    /// *
    _current = config.themes.atOrNull(lastKnownIndex) ?? config.themes.first;
  }

  /// update the theme to one of the theme list by index

  /// update the theme to one of the theme list by index
  Future<void> updateTo(QTheme theme) async {
    _current = theme;
    await Prefs.setInt('queen.theme.index', currentIndex);
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
      (e) => e.name == name,
    );

    if (theme != null) {
      await updateTo(theme);
    }
  }

  Future<void> updateByIndex(int index) async {
    try {
      await updateByIndexOrThrow(index);
    } catch (err) {
      if (err is! RangeError) rethrow;
    }
  }

  Future<void> updateByIndexOrThrow(int index) async {
    _current = config.themes[index];
    await Prefs.setInt('queen.theme.index', index);
    notifyListeners();
  }
}
