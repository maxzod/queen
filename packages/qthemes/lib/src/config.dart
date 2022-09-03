import 'package:flutter/material.dart';
import 'package:qthemes/qthemes.dart';

/// holds avilable theme for the app
class ThemeConfig {
  const ThemeConfig();

  /// * List of available thames
  List<QTheme> get themes => [
        QTheme(
          id: 'dark',
          name: 'Dark',
          theme: ThemeData.dark(),
        ),
        QTheme(
          id: 'light',
          name: 'Light',
          theme: ThemeData.light(),
        ),
      ];
}
