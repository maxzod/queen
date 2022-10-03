import 'package:flutter_readable/flutter_readable.dart';
import 'package:locators/locators.dart';
import 'package:nations/nations.dart';

import 'helpers/extractors.dart';

/// base class for extracted data result
abstract class ExtractedData<T> {
  /// creates a new instance of ExtractedData
  ExtractedData({
    required this.key,
    required this.data,
  });
  // * extracted data key
  /// in case of `'foo'.tr` the key is `'foo'`
  final String key;

  /// in case of `{"foo":"bar"` the data is `"bar"`
  final T data;

  ///* crates new ExtractedData instance from the loaded translations
  static ExtractedData parse(String key) {
    /// * the data from

    final value = findInMap(key, Locators.find<TransController>().translations);

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
  /// creates a new map data class
  MapData(
    String key,
    Map<String, Object?> value,
  ) : super(key: key, data: value);

  @override
  String? toGender([Gender? gender]) {
    if (gender == null) {
      return toGender(Locators.find<TransController>().config.defaultGender);
    } else if (gender == Gender.male && data['male'] is String) {
      return data['male']! as String;
    } else if (gender == Gender.female && data['female'] is String) {
      return data['female']! as String;
    }
    return null;
  }

  @override
  String? plural(int count, [Map<String, Object?>? args]) {
    if (data.isNotEmpty) {
      final pluralKey = resolveCount(count, data.keys);
      if (pluralKey != null && data[pluralKey] != null) {
        return replaceArgsOf(
          data[pluralKey].toString(),
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
    if (data['this'] is String) {
      return data['this']! as String;
    }
    return null;
  }
}

/// to handle none existing keys .
class NotFoundData extends ExtractedData<void> {
  /// to handle none existing keys .
  NotFoundData(
    String key,
  ) : super(key: key, data: null);
}

/// to handle String values conversion
class StringData extends ExtractedData<String> {
  /// to handle String values conversion
  StringData(
    String key,
    String value,
  ) : super(key: key, data: value);

  @override
  String? args(Map<String, dynamic> args) => replaceArgsOf(data, args);

  @override
  String? text() => data;
}
