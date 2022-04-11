import 'package:flutter/material.dart';
import 'package:queen/queen.dart';

/// helper extension for the locale features
extension NationsLocaleX on Locale {
  /// return true if this app support this locale
  bool get isSupported => Lang.supportedLocales.contains(this);
}
