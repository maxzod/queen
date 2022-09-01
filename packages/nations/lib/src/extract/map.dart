part of 'base.dart';

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
