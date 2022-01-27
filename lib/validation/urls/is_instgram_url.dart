// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/urls.dart';

class IsInstagramUrl extends TextValidationRule {
  IsInstagramUrl([String? error]) : super(error);

  @override
  bool isValid(String input) => isInstgramUrlValid(input);

  // @override
  // String get localizedError => 'not_valid_instagram_url'.tr;
}
