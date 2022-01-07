import 'package:flutter/material.dart';
import 'package:queen/queen.dart';
import 'package:queen_themes_example/home.dart';

import 'config/lang.dart';
import 'config/theme.dart';

void main() async {
  await Queen.boot(
    themeConfig: AppThemesConfig(),
    nationsConfig: AppLangConfig(),
  );
  runApp(
    QueenBuilder(
      // enableDevtools: false,
      builder: (ctx) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      /// * theming
      theme: Queen.currentTheme,

      /// * localizations
      locale: Nations.locale,
      supportedLocales: Nations.supportedLocales,
      localizationsDelegates: Nations.delegates,

      /// *
      home: const HomePage(),
    );
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Column(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       const DebugBar(),
    //       Expanded(
    //           child: MaterialApp(
    //         /// * theming
    //         theme: Queen.currentTheme,

    //         /// * localizations
    //         locale: Nations.locale,
    //         supportedLocales: Nations.supportedLocales,
    //         localizationsDelegates: Nations.delegates,

    //         /// *
    //         home: const HomePage(),
    //       )),
    //     ],
    //   ),
    // );
  }
}
