// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/urls.dart';

class IsFacebookUrl extends TextValidationRule {
  IsFacebookUrl([String? error]) : super(error);

  @override
  bool isValid(String input) => isFacebookUrlValid(input);

  // @override
  // String get localizedError => 'not_valid_facebook_url'.tr;
}
