// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/numbers.dart';

class MinValue extends TextValidationRule {
  final num min;

  MinValue(this.min, [String? error]) : super(error);

  @override
  bool isValid(String input) => minValue(input, min);
  // @override
  // String get localizedError =>
  // 'validation.must_be_min'.args({'minNum': min.toString()});
}
