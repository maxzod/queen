import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:queen/queen.dart';

/// contains the localization config
class LangConfig {
  /// coning base class
  const LangConfig({
    this.fallbackLocale = const Locale('ar'),
    this.baseLoader = const AppAssetsLoader(),
    this.supportedLocales = const [
      Locale('ar'),
      Locale('en'),
      Locale('es'),
      Locale('tur'),
    ],
    this.defaultGender = Gender.male,
    this.loaders = const <NationsLoader>[
      AppAssetsLoader(),
    ],
  });

  /// which locale to use in case of failure
  final Locale fallbackLocale;

  /// loads the app translations
  final NationsLoader baseLoader;

  /// list of the supported locales
  final List<Locale> supportedLocales;

  /// the default gender
  final Gender defaultGender;

  /// the loaders
  final List<NationsLoader> loaders;

  /// not found builder
  /// to build the not found string
  String notFound(String key) => kDebugMode ? 'null' : key;

  /// not found builder
  /// to build the not found string
  String notFoundPlural(
    String key,
    int count,
    Map<String, Object> args,
  ) =>
      notFound(key);

  /// not found builder
  /// to build the not found string
  String notFoundArgs(
    String key,
    Map<String, Object> args,
  ) =>
      notFound(key);

  /// not found builder
  /// to build the not found string
  String notFoundGender(
    String key, [
    Gender? gender,
  ]) =>
      notFound(key);
}
