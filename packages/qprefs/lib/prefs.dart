import 'dart:convert';

import 'package:locators/locators.dart';
import 'package:readable/readable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// facilitate SharedPreferences
abstract class Prefs {
  static SharedPreferences get instance => Locators.find();

  /// return string if exist else return null
  static String? getStringOrNull(String key) => instance.getString(key);

  /// set String value to given key
  static Future<void> setString(
    String key,
    String value,
  ) =>
      instance.setString(key, value);

  /// get String value to given key
  static String getString(
    String key, [
    String defult = '',
  ]) =>
      getStringOrNull(key) ?? defult;
  static int? getIntOrNull(
    String key,
  ) =>
      instance.getInt(key);

  static int getInt(
    String key, [
    int defult = 0,
  ]) =>
      getIntOrNull(key) ?? defult;

  /// Retrieve a boolean value from the preferences to given key
  static bool getBool(
    String key,
  ) =>
      instance.getBool(key) ?? false;

  /// set a value from the preferences to given key
  static Future<void> setInt(
    String key,
    int value,
  ) =>
      instance.setInt(key, value);

  /// set a boolean value from the preferences to given key
  static Future<void> setBool(
    String key,
    // ignore: avoid_positional_boolean_parameters
    bool value,
  ) =>
      instance.setBool(key, value);

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
      instance.get(key);

  /// clear the share preferences
  static Future<void> clear() => instance.clear();

  /// delete a single value from the shared prefs
  static Future<void> remove(
    String key,
  ) =>
      instance.remove(key);

  /// deletes more than one value from the shared prefs
  static Future<void> removeMany(
    List<String> keys,
  ) =>
      // readable
      keys.loop(instance.remove);

  /// return date if exist else return null
  static DateTime? getDateOrNull(
    String key,
  ) =>
      DateTime.tryParse(getString(key));

  /// return date with given key if exist else return null
  static DateTime getDate(
    String key,
  ) =>
      getDateOrNull(key) ?? DateTime.now();

  /// set date with given key and value
  static Future<void> setDate(
    String key,
    DateTime value,
  ) =>
      setString(key, value.toString());
}
