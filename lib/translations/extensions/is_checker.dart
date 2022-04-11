import 'package:flutter/material.dart';

// TODO :: should be in readable
extension LocaleIsChecker on Locale {
  bool _is(String lang) => languageCode.toLowerCase() == lang;

  bool get isArabic => _is('ar');

  bool get isEnglish => _is('en');
}
