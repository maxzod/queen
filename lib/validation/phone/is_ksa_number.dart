// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/phones.dart';

class ISKsaPhone extends TextValidationRule {
  ISKsaPhone([String? error]) : super(error);

  @override
  bool isValid(String input) => isKsaPhone(input);
  // @override
  // String get localizedError => 'validation.is_ksa_num'.tr;
}
