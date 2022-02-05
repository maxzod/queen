import 'dart:convert';

import 'package:queen/locators.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class Prefs {
  static SharedPreferences get _prefs => Locators.find();

  static String getString(String key) => _prefs.getString(key) ?? '';

  static int getInt(String key) => _prefs.getInt(key) ?? -1;
  static bool getBool(String key) => _prefs.getBool(key) ?? false;

  static Future<void> setString(String key, String value) => _prefs.setString(key, value);
  static Future<void> setInt(
    String key,
    int value,
  ) =>
      _prefs.setInt(key, value);
  // ignore: avoid_positional_boolean_parameters
  static Future<void> setBool(
    String key,
    bool value,
  ) =>
      _prefs.setBool(key, value);

  /// clear the share preferences
  static Future<void> clear() => _prefs.clear();

  static Map<String, dynamic> getMap(
    String key,
  ) {
    final data = getString(key);
    return data.isEmpty ? {} : jsonDecode(data) as Map<String, dynamic>;
  }

  static Future<void> setMap(
    String key,
    Map<String, dynamic> map,
  ) =>
      setString(key, jsonEncode(map));
}
