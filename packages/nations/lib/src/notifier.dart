part of 'facade.dart';

const _kPrefsKey = 'queen.nations.lang';

/// nations base class
class TransNotifier extends ChangeNotifier {
  /// * current locale
  @protected
  @visibleForTesting
  late Locale currentLocale;

  /// * loaded locale translations
  @protected
  @visibleForTesting
  final Map<String, Object?> translations = {};

  /// set up Nations controller
  Future<void> boot() async => load(
        localeToUse(
          fallback: AppLang.fallbackLocale,
          supportedLocales: AppLang.supportedLocales,
          savedKey: Prefs.getStringOrNull(_kPrefsKey),
          windowLocale: window.locale,
        ),
      );

  /// * updates the current locale the restart the app (notify the root builder)
  Future<void> updateLocale(Locale locale) async {
    currentLocale = locale;
    await Prefs.setString(_kPrefsKey, locale.toString());
    await load(locale);
  }

  /// used by this class only to load the translations when locale changes
  @protected
  @visibleForTesting
  Future<void> load(Locale locale) async {
    /// for each loader add the values to the translation map
    final _app = <String, Object?>{};

    for (final loader in AppLang.config.loaders) {
      _app[loader.name] = await loader.load(locale);
    }

    _app.addAll(const NationsAssetsLoader().load(locale));
    final baseData = await AppLang.config.baseLoader.load(locale);

    final result = mergeTwoMaps(_app, baseData)?.cast<String, Object?>();

    /// * clear the old translations

    translations
      ..clear()
      ..addAll(result ?? {});

    notifyListeners();
  }
}
