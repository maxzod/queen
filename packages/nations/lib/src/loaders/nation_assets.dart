import 'package:flutter/material.dart';
import 'package:nations/src/loaders/base.dart';
import 'package:nations_assets/nations_assets.dart';

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
