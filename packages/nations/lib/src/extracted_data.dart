import 'package:flutter_readable/flutter_readable.dart';
import 'package:nations/nations.dart';

import 'helpers/extractors.dart';

/// base class for extracted value result
abstract class ExtractedData<T> {
  /// creates a new instance of ExtractedData
  ExtractedData({
    required this.key,
    required this.value,
  });
  // * extracted value key
  /// in case of `'foo'.tr` the key is `'foo'`
  final String key;

  /// in case of `{"foo":"bar"` the value is `"bar"`
  final T value;

  ///* crates new ExtractedData instance from the loaded translations
  static ExtractedData parse({
    required String key,
    required Map<Object?, Object?> translations,
  }) {
    /// * the value from

    final value = findInMap(key, translations);

    if (value is String) {
      return StringData(key, value);
    } else if (value is Map<String, Object?>) {
      return MapData(key, value);
    }
    return NotFoundData(key);
  }

  /// convert the result with pluralization
  String? text() => null;

  /// convert the result with pluralization
  String? plural(int count, [Map<String, Object>? args]) => null;

  /// convert the result with the gender
  String? toGender([Gender? gender]) => null;

  /// replace the arguments of the string
  String? args(Map<String, Object> args) => null;
}

/// handles the extraction of map
class MapData extends ExtractedData<Map<String, Object?>> {
  /// creates a new map value class
  MapData(
    String key,
    Map<String, Object?> value,
  ) : super(key: key, value: value);

  @override
  String? toGender([Gender? gender]) {
    if (gender == null) {
      return toGender(AppLang.config.defaultGender);
    } else if (gender == Gender.male && value['male'] is String) {
      return value['male']! as String;
    } else if (gender == Gender.female && value['female'] is String) {
      return value['female']! as String;
    }
    return null;
  }

  @override
  String? plural(int count, [Map<String, Object?>? args]) {
    if (value.isNotEmpty) {
      final pluralKey = resolveCount(count, value.keys);
      if (pluralKey != null && value[pluralKey] != null) {
        return replaceArgsOf(
          value[pluralKey].toString(),
          {
            'count': count.toString(),
            if (args != null) ...args,
          },
        );
      }
    }
    return null;
  }

  @override
  String? text() {
    if (value['this'] is String) {
      return value['this']! as String;
    }
    return null;
  }
}

/// to handle none existing keys .
class NotFoundData extends ExtractedData<void> {
  /// to handle none existing keys .
  NotFoundData(
    String key,
  ) : super(key: key, value: null);
}

/// to handle String values conversion
class StringData extends ExtractedData<String> {
  /// to handle String values conversion
  StringData(
    String key,
    String value,
  ) : super(key: key, value: value);

  @override
  String? args(Map<String, dynamic> args) => replaceArgsOf(value, args);

  @override
  String? text() => value;
}
