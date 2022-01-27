import 'package:queen/validation.dart';

/// checks if the input characters length is bigger than the min field

class MinLength extends TextValidationRule {
  final int min;

  MinLength(this.min, [String? error]) : super(error);

  @override
  bool isValid(String input) {
    return input.trim().length >= min;
  }

  // @override
  // String get localizedError => 'validation.min length is $min';
}
