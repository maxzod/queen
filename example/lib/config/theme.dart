import 'package:flutter/material.dart';
import 'package:queen/queen.dart';

class AppThemesConfig extends QThemeConfig {
  @override
  List<QTheme> get themes => [
        QTheme(
          theme: ThemeData.dark(),
          name: 'Dark',
        ),
        QTheme(
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.yellow,
          ),
          name: 'Yellow',
        ),
        QTheme(
          theme: ThemeData.light(),
          name: 'Light',
        ),
        QTheme(
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.red,
          ),
          name: 'Red',
        ),
      ];
}
