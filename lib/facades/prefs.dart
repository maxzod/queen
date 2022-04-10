import 'dart:convert';

import 'package:queen/queen.dart';

abstract class Prefs {
  static SharedPreferences get _prefs => Locators.find();

  static String getString(
    String key, [
    String defult = '',
  ]) =>
      _prefs.getString(key) ?? defult;

  static String? getStringOrNull(
    String key,
  ) =>
      _prefs.getString(key);

  static int getInt(
    String key, [
    int defult = 0,
  ]) =>
      _prefs.getInt(key) ?? defult;
  static bool getBool(
    String key,
  ) =>
      _prefs.getBool(key) ?? false;

  static Future<void> setString(
    String key,
    String value,
  ) =>
      _prefs.setString(key, value);
  static Future<void> setInt(
    String key,
    int value,
  ) =>
      _prefs.setInt(key, value);

  static Future<void> setBool(
    String key,
    // ignore: avoid_positional_boolean_parameters
    bool value,
  ) =>
      _prefs.setBool(key, value);

  /// clear the share preferences
  static Future<void> clear() => _prefs.clear();

  static Future<void> remove(
    String key,
  ) =>
      _prefs.remove(key);

  static Future<void> removeMany(
    List<String> keys,
  ) =>
      keys.loop(_prefs.remove);

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
