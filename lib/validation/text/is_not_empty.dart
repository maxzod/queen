/// checks if the input is not empty string

/// IsRequired is more convenient still
/// wont be bad to have both
import 'package:queen/validation.dart';
import 'package:queen_validators/text.dart';

class IsRequired extends TextValidationRule {
  IsRequired([String? error]) : super(error);

  @override
  bool isValid(String input) => isNotEmpty(input);
  // @override
  // String get localizedError => 'validation.required'.tr;
}
