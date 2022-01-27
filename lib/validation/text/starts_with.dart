// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';

class StartsWith extends TextValidationRule {
  final Pattern pattern;

  StartsWith(this.pattern, [String? error]) : super(error);

  @override
  bool isValid(String input) => input.trim().startsWith(pattern);
  // @override
  // String get localizedError => 'validation.starts_with'.args(
  //       {'value': pattern.toString()},
  //     );
}
