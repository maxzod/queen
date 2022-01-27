// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/numbers.dart';

class MaxValue extends TextValidationRule {
  final num max;

  MaxValue(this.max, [String? error]) : super(error);

  @override
  bool isValid(String input) => maxValue(input, max);
  // @override
  // String get localizedError =>
  // 'validation.must_be_max'.args({'maxNum': max.toString()});
}
