// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/date.dart';

class IsDate extends TextValidationRule {
  const IsDate([String? error]) : super(error);

  @override
  bool isValid(String input) => isDate(input);

  // @override
  // String get localizedError => 'validation.is_not_date_format'.tr;
}
