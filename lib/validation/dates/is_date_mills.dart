// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/date.dart';

/// checks if the input is a valid `date` to parse by
///  `DateTime.fromMillisecondsSinceEpoch` factory

class IsDateMillis extends TextValidationRule {
  final bool isUtc;

  /// * [isUtc] - if `true` the `DateTime` will be in UTC timezone,
  /// * otherwise it will be in local timezone

  IsDateMillis({
    this.isUtc = false,
    String? error,
  }) : super(error);

  @override
  bool isValid(String input) => isDateMills(input, isUtc: isUtc);

  // @override
  // String get localizedError => 'validation.not_valid_date_millis'.tr;
}
