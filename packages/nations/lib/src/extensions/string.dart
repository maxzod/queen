import 'package:nations/nations.dart';
import 'package:nations/src/extracted_data.dart';

/// string translation extension
extension NationsTrans on String {
  /// * translate a text based on the App locale
  /// * if there is error will use the config `notFound`
  String get tr =>
      ExtractedData.parse(key: this, translations: AppLang.translations)
          .text() ??
      AppLang.config.notFound(this);

  /// * translate a text **AND** use the default gender
  /// * if there is error will use the config `notFoundGender`
  String get gender =>
      ExtractedData.parse(key: this, translations: AppLang.translations)
          .toGender() ??
      AppLang.config.notFoundGender(this);

  /// * translate a text **AND** use the `male` gender
  /// * if there is error will use the config `notFoundGender`
  String get trMale =>
      ExtractedData.parse(key: this, translations: AppLang.translations)
          .toGender(Gender.male) ??
      AppLang.config.notFoundGender(this, Gender.male);

  /// * translate a text **AND** use the `female` gender
  /// * if there is error will use the config `notFoundGender`
  String get trFemale =>
      ExtractedData.parse(key: this, translations: AppLang.translations)
          .toGender(Gender.female) ??
      AppLang.config.notFoundGender(this, Gender.female);

  /// * translate a text and replace the args with provided data
  /// * if there is error will use the config `notFoundArgs`
  String args(Map<String, Object> args) =>
      ExtractedData.parse(key: this, translations: AppLang.translations)
          .args(args) ??
      AppLang.config.notFoundArgs(this, args);

  ///  * translate a text and set the right word base on the provided count
  /// * if there is error will use the config `notFoundPlural`
  String plural(
    int count, [
    Map<String, Object> args = const {},
  ]) =>
      ExtractedData.parse(key: this, translations: AppLang.translations)
          .plural(count, args) ??
      AppLang.config.notFoundPlural(this, count, args);

  /// covert the number to locale format
  /// if none locale givin it will use the current locale
  String toLocale([
    Locale? locale,
  ]) =>
      numberToLocale(this, locale ?? AppLang.current);
}
