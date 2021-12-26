import 'package:flutter/material.dart';
import 'package:queen/queen.dart';
import 'package:queen_themes_example/home.dart';

import 'config/lang.dart';

void main() {
  Queen.boot(
    themeConfig: AppThemesConfig(),
    nationsConfig: AppLangConfig(),
  );
  runApp(QueenBuilder(builder: (ctx) => const MyApp()));
}

class AppThemesConfig extends QThemeConfig {
  @override
  List<ThemeData> get themes => [
        ThemeData.dark(),
        ThemeData(
          scaffoldBackgroundColor: Colors.yellow,
        ),
        ThemeData.light(),
        ThemeData(
          scaffoldBackgroundColor: Colors.red,
        ),
      ];
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// * theming
      theme: QTheme.current,

      /// * localizations
      locale: Nations.locale,
      supportedLocales: Nations.supportedLocales,
      localizationsDelegates: Nations.delegates,

      /// *
      home: const HomePage(),
    );
  }
}
