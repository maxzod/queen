// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/it.dart';

class IsBool extends TextValidationRule {
  const IsBool([String? error]) : super(error);

  @override
  bool isValid(String input) => isBool(input);
  // @override
  // String get localizedError => 'validation.is_not_bool'.tr;
}
