import 'package:nations/nations.dart';

Locale localeToUse({
  required Locale fallback,
  required Locale windowLocale,
  required List<Locale> supportedLocales,
  required String? savedKey,
}) {
  /// if there is a save locale and still supported use it
  if (savedKey != null &&
      savedKey.isNotEmpty &&
      supportedLocales.any((l) => l.languageCode == savedKey)) {
    return Locale(savedKey);

    /// if no check if the device locale is supported or not
  } else if (windowLocale.isSupported) {
    return windowLocale;
  } else {
    return fallback;
  }
}
