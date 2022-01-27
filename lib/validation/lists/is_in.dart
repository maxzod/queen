// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/lits.dart';

/// checks if the input `is in` provided List;
class IsIn extends TextValidationRule {
  final List<String> list;

  IsIn(this.list, [String? error]) : super(error);

  @override
  bool isValid(String input) => isIn(input, list);

  // @override
  // String get localizedError => 'validation.must_be_in_list'.args(
  //       {
  //         'list': list.toString(),
  //       },
  //     );
}
