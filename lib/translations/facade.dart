import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:queen/locators.dart';
import 'package:queen/translations.dart';

class Lang {
  Lang._();
  static TransController get _controller => Locators.find<TransController>();
  static Locale get current => _controller.locale;

  static List<Locale> get supportedLocales =>
      _controller.config.supportedLocales;

  static List<LocalizationsDelegate> get delegates => <LocalizationsDelegate>[
        // delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ];

  static Locale get device => window.locale;
}
