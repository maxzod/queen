// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/lang.dart';

class IsLtrLanguage extends TextValidationRule {
  IsLtrLanguage([String? error]) : super(error);

  @override
  bool isValid(String input) => isLtrLanguage(input);
  // @override
  // String get localizedError => 'validation.is_not_ltr_language_code'.tr;
}
