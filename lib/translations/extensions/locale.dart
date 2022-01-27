import 'package:flutter/material.dart';
import 'package:queen/queen.dart';

///
extension NationsLocaleX on Locale {
  /// return true if this app support this locale
  bool get isSupported => Lang.supportedLocales.contains(this);
}
