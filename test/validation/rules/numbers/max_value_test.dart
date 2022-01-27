import 'package:flutter_test/flutter_test.dart';
import 'package:queen/validation.dart';

void main() {
  group('MaxValue Rule', () {
    test('it returns true if is under the max value', () {
      expect(MaxValue(50).isValid('49'), isTrue);
    });
    test('it returns true if is == to the max value', () {
      expect(MaxValue(4).isValid('4'), isTrue);
    });
    test('it returns false if is not valid number ', () {
      expect(MaxValue(4).isValid('4x'), isFalse);
    });
  });
}
