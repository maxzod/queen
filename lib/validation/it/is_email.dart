// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/it.dart';

/// checks if the input is a valid `email` address
class IsEmail extends TextValidationRule {
  const IsEmail([String? error]) : super(error);

  @override
  bool isValid(String input) => isEmail(input);
  // @override
  // String get localizedError => 'validation.is_not_email_address'.tr;
}
