import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'config.dart';

/// theme controller
// ignore: non_constant_identifier_names
final QTheme = QBaseTheme._();

/// queen base theme controller
class QBaseTheme extends ChangeNotifier {
  QBaseTheme._();

  /// config
  QThemeConfig _config = BaseQThemeConfig();

  /// current config
  QThemeConfig get config => _config;

  /// set up the base controller
  Future<void> boot([QThemeConfig? config]) async {
    _prefs = await SharedPreferences.getInstance();

    if (config != null) {
      _config = config;
      log('[Q][Theme] config update !');
    }
    final lastKnownIndex = _prefs.getInt('queen.theme.index') ?? 0;

    /// *
    _current = _config.themes[lastKnownIndex];
  }

  ThemeData? _current;

  late SharedPreferences _prefs;

  /// current theme
  ThemeData get current => _current ?? config.themes.first;

  /// current theme index
  int get currentIndex => config.themes.indexOf(current);

  /// update the theme to one of the theme list by index
  Future<void> updateTo(int index) async {
    try {
      _current = config.themes[index];
      await _prefs.setInt('queen.theme.index', index);
      notifyListeners();
    } catch (e) {
      if (e is RangeError) {
        log("cant update theme to $index since there is only ${config.themes.length} themes");
      } else {
        rethrow;
      }
    }
  }

  /// switch the theme to the next in the list
  /// if there is no next theme, it will switch to the first one
  Future<void> next() async {
    final isLastTheme = currentIndex == config.themes.length - 1;
    await updateTo(isLastTheme ? 0 : currentIndex + 1);
  }
}
