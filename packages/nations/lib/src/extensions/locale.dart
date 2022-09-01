import 'package:flutter/material.dart';
import 'package:nations/src/facade.dart';

/// helper extension for the locale features
extension NationsLocaleX on Locale {
  /// return true if this app support this locale
  bool get isSupported => AppLang.supportedLocales.contains(this);
}
