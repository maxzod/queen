// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';

/// checks if input does not contain the provided value;

class NotContains extends TextValidationRule {
  final String value;

  NotContains(this.value, [String? error]) : super(error);

  @override
  bool isValid(String input) => !input.trim().contains(value);

  // @override
  // String get localizedError => 'validation.not_contains'.args(
  //       {
  //         'value': value,
  //       },
  //     );
}
