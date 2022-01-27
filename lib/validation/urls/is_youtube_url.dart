// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/urls.dart';

class IsYoutubeUrl extends TextValidationRule {
  IsYoutubeUrl([String? error]) : super(error);

  @override
  bool isValid(String input) => isYoutubeUrLValid(input);

  // @override
  // String get localizedError => 'not_valid_youtube_url'.tr;
}
