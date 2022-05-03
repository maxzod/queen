import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:queen/queen.dart';

abstract class Lang {
  // shortcut to the controller
  static TransController get _controller => Locators.find<TransController>();

  /// * return the current locale
  static Locale get current => _controller.locale;

  /// * return true if the current locale == the paramter
  static bool equals(Locale locale) => current == locale;

  /// * return current locale language code
  static String get key => current.languageCode;

  /// * return current locale country code
  static String? get country => current.countryCode;

  /// *
  static String get name => current.toString();

  /// * return supported `Locale` list
  static List<Locale> get supportedLocales =>
      _controller.config.supportedLocales;

  /// * update a locale
  static Future<void> update(
    Locale locale,
  ) =>
      _controller.updateLocale(locale);

  static bool get isRtl => isRtlLanguage(name);
  static bool get isLtr => isLtrLanguage(name);
}
