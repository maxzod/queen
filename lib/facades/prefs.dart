import 'dart:convert';

import 'package:queen/queen.dart';

abstract class Prefs {
  static SharedPreferences get _prefs => Locators.find();
  static String? getStringOrNull(
    String key,
  ) =>
      _prefs.getString(key);
  static Future<void> setString(
    String key,
    String value,
  ) =>
      _prefs.setString(key, value);
  static String getString(
    String key, [
    String defult = '',
  ]) =>
      getStringOrNull(key) ?? defult;
  static int? getIntOrNull(
    String key,
  ) =>
      _prefs.getInt(key);

  static int getInt(
    String key, [
    int defult = 0,
  ]) =>
      getIntOrNull(key) ?? defult;

  static bool getBool(
    String key,
  ) =>
      _prefs.getBool(key) ?? false;

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

  static Map<String, Object?> findMany(Iterable<String> keys) {
    final result = <String, Object?>{};
    for (final key in keys) {
      result[key] = find(key);
    }
    return result;
  }

  // static Future<void> setMany(Map<String, Object> data) {
  //   for (final key in data.keys) {
  //     put(key, data[key]);
  //   }
  //   return result;
  // }

  static Object? find(
    String key,
  ) =>
      _prefs.get(key);
}
