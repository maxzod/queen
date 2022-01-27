// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/it.dart';

/// checks if the input is a valid `port`
class IsPort extends TextValidationRule {
  const IsPort([String? error]) : super(error);

  @override
  bool isValid(String input) => isPort(input);

  // @override
  // String get localizedError => 'validation.is_not_port'.tr;
}
