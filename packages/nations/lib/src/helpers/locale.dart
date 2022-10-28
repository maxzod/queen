import 'package:nations/nations.dart';

/// decide which locale to use in booting
Locale localeToUse({
  required Locale fallback,
  required Locale firstTimeLocale,
  required List<Locale> supportedLocales,
  required String savedKey,
}) {
  /// if there is a save locale and still supported use it
  if (savedKey.isNotEmpty &&
      supportedLocales.any((l) => l.toString() == savedKey)) {
    return Locale(savedKey);

    /// if no check if the firstTimeLocale is supported or not
  } else if (firstTimeLocale.isSupported) {
    return firstTimeLocale;
  } else {
    return fallback;
  }
}
