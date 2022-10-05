import 'package:locators/locators.dart';
import 'package:nations/nations.dart';

/// facilitate controlling the localization process
abstract class AppLang {
  // shortcut to the controller
  static TransController get _controller => find<TransController>();

  /// * return the current locale
  static Locale get current => _controller.currentLocale;

  static Locale get fallbackLocale => config.fallbackLocale;

  static Map<String, Object?> get translations => _controller.translations;

  /// * return current `LangConfig`
  static LangConfig get config => find<LangConfig>();

  /// * return true if the current locale == the parameter
  static bool equals(Locale locale) => current == locale;

  /// * return current locale language code
  static String get key => current.languageCode;

  /// * return current locale country code
  static String? get country => current.countryCode;

  /// *
  static String get name => current.toString();

  /// * return supported `Locale` list
  static List<Locale> get supportedLocales => config.supportedLocales;

  /// * update a locale
  static Future<void> update(
    Locale locale,
  ) =>
      _controller.updateLocale(locale);
}
