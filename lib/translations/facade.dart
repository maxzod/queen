import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:queen/locators.dart';
import 'package:queen/translations/translations.dart';

abstract class Lang {
  // shortcut to the controller
  static TransController get _controller => Locators.find<TransController>();

  /// * return the current locale
  static Locale get current => _controller.locale;

  /// * return supported `Locale` list
  static List<Locale> get supportedLocales =>
      _controller.config.supportedLocales;

  /// * update a locale
  static Future<void> update(
    Locale locale,
  ) =>
      _controller.updateLocale(locale);
}
