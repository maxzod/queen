import 'package:flutter/material.dart';
import 'package:queen/models/theme.dart';

/// contains the config of the theme

/// contains light and dark theme
class QThemeConfig {
  /// * List of available thames
  List<QTheme> get themes => [
        QTheme(
          name: 'Dark',
          theme: ThemeData.dark(),
        ),
        QTheme(
          name: 'Light',
          theme: ThemeData.light(),
        ),
      ];
}
