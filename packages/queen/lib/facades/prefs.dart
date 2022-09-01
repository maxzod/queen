import 'dart:convert';

import 'package:queen/queen.dart';

// TODO :: add docs
abstract class Prefs {
  static SharedPreferences get instance => Locators.find();

  static String? getStringOrNull(String key) => instance.getString(key);
  static Future<void> setString(
    String key,
    String value,
  ) =>
      instance.setString(key, value);
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

  static bool getBool(
    String key,
  ) =>
      instance.getBool(key) ?? false;

  static Future<void> setInt(
    String key,
    int value,
  ) =>
      instance.setInt(key, value);

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

  static Future<void> remove(
    String key,
  ) =>
      instance.remove(key);

  static Future<void> removeMany(
    List<String> keys,
  ) =>
      keys.loop(instance.remove);

  static DateTime? getDateOrNull(
    String key,
  ) =>
      DateTime.tryParse(getString(key));

  static DateTime getDate(
    String key,
  ) =>
      getDateOrNull(key) ?? DateTime.now();

  static Future<void> setDate(
    String key,
    DateTime value,
  ) =>
      setString(key, value.toString());
}
