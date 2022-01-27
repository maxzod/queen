// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/text.dart';

class IsEmpty extends TextValidationRule {
  IsEmpty([String? error]) : super(error);

  @override
  bool isValid(String input) => isEmpty(input);
  // @override
  // String get localizedError => 'validation.is_empty'.tr;
}
