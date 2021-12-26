import 'package:queen/queen.dart';

class AppLangConfig extends NationsConfig {
  @override
  String Function(String key) get notFoundBuilder => (key) => '$key not found';

  // @override
  // List<Locale> get supportedLocales => [
  //       const Locale('ar'),
  //     ];

  @override
  Gender get defaultGender {
    return Gender.female;
  }
}
