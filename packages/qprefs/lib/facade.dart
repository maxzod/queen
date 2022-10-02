import 'dart:convert';

import 'package:locators/locators.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// ease handling shared preferences
abstract class Prefs {
  /// return shared pref from the Locators container
  static SharedPreferences get _prefs => Locators.find();

  /// return `String` by key if exists else return `null`
  static String? getStringOrNull(
    String key,
  ) =>
      _prefs.getString(key);

  /// return `String` by key if exists else return `def` value
  static String? getStringOr(
    String key,
    String def,
  ) =>
      getStringOrNull(key) ?? def;

  /// return `String` by key if exists else return `''` (Empty String)
  static String getStringOrEmpty(
    String key,
  ) =>
      getStringOrNull(key) ?? '';

  /// set the value to given key in shared prefs
  static Future<void> setString(
    String key,
    String value,
  ) =>
      _prefs.setString(key, value);

  /// set the value to given key to `''` (Empty String)
  static Future<void> setStringToEmpty(
    String key,
  ) =>
      _prefs.setString(key, '');

  /// return `int` by key else return `null`
  static int? getIntOrNull(
    String key,
  ) =>
      _prefs.getInt(key);

  /// return `int` if exists else return `def`
  static int getIntOr(
    String key,
    int def,
  ) =>
      getIntOrNull(key) ?? def;

  static Future<void> setInt(
    String key,
    int value,
  ) =>
      _prefs.setInt(key, value);

  static int getIntOrZero(
    String key,
  ) =>
      getIntOrNull(key) ?? 0;

  ///  return `bool` by key if exist return True else false
  static bool? getBoolOrNull(
    String key,
  ) =>
      _prefs.getBool(key);

  static bool getBoolOr(
    String key,
    bool def,
  ) =>
      _prefs.getBool(key) ?? def;

  static bool getBoolOrFalse(
    String key,
  ) =>
      getBoolOr(key, false);

  static bool getBoolOrTrue(
    String key,
  ) =>
      getBoolOr(key, false);

  static Future<void> setBool(
    String key,
    // ignore: avoid_positional_boolean_parameters
    bool value,
  ) =>
      _prefs.setBool(key, value);

  static Map<String, dynamic> getMap(
    String key,
  ) {
    final data = getStringOrEmpty(key);
    return data.isEmpty ? {} : jsonDecode(data) as Map<String, dynamic>;
  }

  /// return Map by given key or value
  static Future<void> setMap(
    String key,
    Map<String, dynamic> map,
  ) =>
      setString(key, jsonEncode(map));

  // static Map<String, Object?> findMany(Iterable<String> keys) {
  //   final result = <String, Object?>{};
  //   for (final key in keys) {
  //     result[key] = find(key);
  //   }
  //   return result;
  // }

  // static Future<void> setMany(Map<String, Object> data) {
  //   for (final key in data.keys) {
  //     put(key, data[key]);
  //   }
  //   return result;
  // }

  // static Object? find(
  //   String key,
  // ) =>
  //     _prefs.get(key);

  /// clear the share preferences
  /// TODO ::: safe attributes
  /// ! IT WILL EFFECT QUEEN PACAKAGES ALSON LIKE
  /// ! REMOVE USED THEME NUMBER AND SELECTED LOCALE
  static Future<void> clear() => _prefs.clear();

  /// remove specially key that you want share preferences
  static Future<void> remove(
    String key,
  ) =>
      _prefs.remove(key);

  static Future<void> removeMany(
    List<String> keys,
  ) async {
    for (final key in keys) {
      await remove(key);
    }
  }

  static DateTime? getDateOrNull(
    String key,
  ) =>
      DateTime.tryParse(getStringOrEmpty(key));

  static DateTime getDateOrNow(
    String key,
  ) =>
      getDateOrNull(key) ?? DateTime.now();

  static Future<void> setDate(
    String key,
    DateTime value,
  ) =>
      setString(key, value.toString());
}
