import 'package:flutter/material.dart';
import 'package:queen/queen.dart';
import 'package:queen/translations/helpers/files.dart';

import 'base.dart';

/// * to load lang files from 'assets/lang/'
class AppAssetsLoader extends NationsLoader {
  /// * to load lang files from 'assets/lang/'
  const AppAssetsLoader() : super('app');
  @override
  Future<Map<String, dynamic>> load(Locale locale) async =>
      await loadLocaleTranslation(locale) ?? <String, dynamic>{};
}
