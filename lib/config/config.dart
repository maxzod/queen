import 'package:flutter/material.dart';

/// contains the config of the theme
abstract class QThemeConfig {
  /// * List of available thames
  List<ThemeData> get themes;
}

/// contains light and dark theme
class BaseQThemeConfig extends QThemeConfig {
  @override
  List<ThemeData> get themes => [
        ThemeData.dark(),
        ThemeData.light(),
      ];
}
