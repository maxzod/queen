import 'package:queen/validation.dart';
import 'package:queen_validators/colors.dart';

/// checks if the input is valid hex color
class IsHexColor extends TextValidationRule {
  /// he error message to be displayed if the validation fails
  const IsHexColor([String? error]) : super(error);

  @override
  bool isValid(String input) => isHexColor(input);

  // @override
  // String get localizedError => 'validation.is_not_hex_color'.tr;
}
