// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/phones.dart';

class IsEgyptianPhone extends TextValidationRule {
  IsEgyptianPhone([String? error]) : super(error);

  @override
  bool isValid(String input) => isEgyptianNumber(input);

  // @override
  // String get localizedError => 'validation.is_egyptian_num'.tr;
}
