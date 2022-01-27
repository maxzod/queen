import 'package:flutter_test/flutter_test.dart';
import 'package:queen/validation.dart';

void main() {
  group('MinValue Rule', () {
    test('it returns true if is above the max value', () {
      expect(MinValue(48).isValid('49'), isTrue);
    });
    test('it returns true if is == to the min value', () {
      expect(MinValue(4).isValid('4'), isTrue);
    });
    test('it returns false if is not valid number ', () {
      expect(MinValue(4).isValid('4x'), isFalse);
    });
  });
}
