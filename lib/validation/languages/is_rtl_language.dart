// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/lang.dart';

class IsRTLLanguage extends TextValidationRule {
  IsRTLLanguage([String? error]) : super(error);

  @override
  bool isValid(String input) => isRtlLanguage(input);
  // @override
  // String get localizedError => 'validation.is_not_rtl_language_code'.tr;
}
