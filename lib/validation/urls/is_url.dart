// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/urls.dart';

class IsUrl extends TextValidationRule {
  IsUrl([String? error]) : super(error);

  @override
  bool isValid(String input) => isUrlValid(input);

  // @override
  // String get localizedError => 'not_valid_url'.tr;
}
