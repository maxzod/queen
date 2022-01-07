import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:queen/models/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/config.dart';

/// queen base theme controller
mixin QBaseThemeMixin on ChangeNotifier {
  // QBaseTheme._();

  /// config
  QThemeConfig _config = QThemeConfig();

  /// current config
  QThemeConfig get config => _config;

  /// set up the base controller
  Future<void> bootTheme([QThemeConfig? config]) async {
    _prefs = await SharedPreferences.getInstance();

    if (config != null) {
      _config = config;
      log('[Q][Theme] config update !');
    }
    final lastKnownIndex = _prefs.getInt('queen.theme.index') ?? 0;

    /// *
    _current = _config.themes[lastKnownIndex];
  }

  QTheme? _current;

  late SharedPreferences _prefs;

  /// current theme
  ThemeData get currentTheme => currentQTheme.theme;
  QTheme get currentQTheme => _current ?? config.themes.first;

  /// current theme index
  int get currentIndex => config.themes.indexOf(currentQTheme);

  /// update the theme to one of the theme list by index
  Future<void> updateToIndex(int index) async {
    try {
      _current = config.themes[index];
      await _prefs.setInt('queen.theme.index', index);
      print('updatedTo ${_current!.name}');
      notifyListeners();
    } catch (e) {
      if (e is RangeError) {
        log("cant update theme to $index since there is only ${config.themes.length} themes");
      } else {
        rethrow;
      }
    }
  }

  /// update the theme to one of the theme list by index
  Future<void> updateTo(QTheme theme) async {
    _current = theme;
    await _prefs.setInt('queen.theme.index', currentIndex);
    notifyListeners();
  }

  /// switch the theme to the next in the list
  /// if there is no next theme, it will switch to the first one
  Future<void> nextTheme() async {
    final isLastTheme = currentIndex == config.themes.length - 1;
    await updateToIndex(isLastTheme ? 0 : currentIndex + 1);
  }
}
