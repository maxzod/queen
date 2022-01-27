// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/lits.dart';

/// check if the value contain at lest one of String form the provided list

class ContainsAny extends TextValidationRule {
  final List<String> value;
  bool? caseSensitive;
  ContainsAny(this.value, [String? error]) : super(error);

  @override
  bool isValid(String input) => containsAny(input, value);
  // @override
  // String get localizedError =>
  //     'validation.must_contains_any'.args({'list': value.toString()});
}
