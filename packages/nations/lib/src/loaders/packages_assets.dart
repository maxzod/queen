import 'package:nations/src/helpers/files.dart';
import 'package:nations/src/loaders/base.dart';

import '../../nations.dart';

/// * to load lang files from 'assets/lang/'
class PackageAssetsLoader extends NationsLoader {
  /// * to load lang files from 'assets/lang/'
  const PackageAssetsLoader(super.name);

  @override
  Future<Map<String, dynamic>> load(
    Locale locale,
  ) =>
      loadLocaleTranslationForPackage(name, locale);
}
