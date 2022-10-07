import 'package:nations/src/helpers/files.dart';

import '../../nations.dart';

/// * to load lang files from 'assets/lang/'
class AppAssetsLoader extends NationsLoader {
  /// * to load lang files from 'assets/lang/'
  const AppAssetsLoader() : super('app');

  @override
  Future<Map<String, dynamic>> load(
    Locale locale,
  ) =>
      loadLocaleTranslation(locale);
}
