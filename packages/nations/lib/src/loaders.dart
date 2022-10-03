import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nations/src/helpers/files.dart';
import 'package:nations_assets/nations_assets.dart';

/// * loads translation form assets or any source
/// * extend it to build you custom loader if none of the existing
/// * fits your needs
abstract class NationsLoader {
  /// creates a new loader
  const NationsLoader(this.name);

  /// loader name to  name the translations
  final String name;

  ///* loads the data from you files
  FutureOr<Map<String, Object?>> load(Locale locale);
}

/// * to load lang files from 'assets/lang/'
class AppAssetsLoader extends NationsLoader {
  /// * to load lang files from 'assets/lang/'
  const AppAssetsLoader() : super('app');
  @override
  Future<Map<String, dynamic>> load(Locale locale) async =>
      await loadLocaleTranslation(locale) ?? <String, dynamic>{};
}

/// * to load lang files from 'assets/lang/'
class NationsAssetsLoader extends NationsLoader {
  /// * to load lang files from 'assets/lang/'
  const NationsAssetsLoader() : super('app');

  @override
  Map<String, dynamic> load(Locale locale) {
    return {
          'ar': arAssets,
          'en': enAssets,
          'es': esAssets,
        }[locale.languageCode] ??
        {};
  }
}
