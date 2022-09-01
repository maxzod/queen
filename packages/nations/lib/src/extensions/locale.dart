import 'package:flutter/material.dart';
import 'package:nations/src/lang_facade.dart';

/// helper extension for the locale features
extension NationsLocaleX on Locale {
  /// return true if this app support this locale
  bool get isSupported => Lang.supportedLocales.contains(this);
}
