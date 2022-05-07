import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:queen/queen.dart';

import 'package:queen/translations/loaders/nation_assets.dart';

const _kPrefsKey = 'queen.nations.lang';

/// nations base class
class TransController extends ChangeNotifier {
  TransController({required this.config});

  // final delegate = _NationsDelegate();

  /// * falls back to arabic by default
  LangConfig config;

  Locale? _currentLocale;

  /// set up Nations controller
  Future<void> boot() async {
    final _savedLocale = Prefs.getStringOrNull(_kPrefsKey);

    /// if there is a save locale and still supported use it
    if (_savedLocale != null && Locale(_savedLocale).isSupported) {
      _currentLocale = Locale(_savedLocale);

      /// if no check if the device locale is supported or not
    } else if (window.locale.isSupported) {
      _currentLocale = window.locale;
    } else {
      _currentLocale = config.fallbackLocale;
    }

    await load(locale);
  }

  /// * updates the current locale the restart the app (notify the root builder)
  Future<void> updateLocale(Locale locale) async {
    _currentLocale = locale;
    await Prefs.setString(_kPrefsKey, locale.toString());
    await load(locale);
  }

  /// * get the current locale
  Locale get locale => _currentLocale ?? config.fallbackLocale;

  /// * return the supported locales list from the config
  List<Locale> get supportedLocales => config.supportedLocales;

  final _translations = <String, Object?>{};

  /// return the loaded translations
  Map<String, Object?> get translations => _translations;

  /// used by this class only to load the translations when locale changes
  @protected
  @visibleForTesting
  Future<void> load(Locale locale) async {
    /// for each loader add the values to the translation map
    final _app = <String, Object?>{};

    for (final loader in config.loaders) {
      _app[loader.name] = await loader.load(locale);
    }

    _app.addAll(const NationsAssetsLoader().load(locale));
    final baseData = await config.baseLoader.load(locale);

    final result = mergeTwoMaps(_app, baseData)?.cast<String, Object?>();

    /// * clear the old translations

    _translations
      ..clear()
      ..addAll(result ?? {});

    notifyListeners();
  }
}
