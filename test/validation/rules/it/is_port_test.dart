import 'package:flutter_test/flutter_test.dart';
import 'package:queen/validation.dart';

void main() {
  group('IsPort Rule', () {
    test('returns true if is valid port', () {
      expect(const IsPort().isValid('0'), isTrue, reason: 'Zero is valid port');
      expect(
        const IsPort().isValid('65535'),
        isTrue,
        reason: 'The Max port value',
      );
      expect(const IsPort().isValid('80'), isTrue, reason: 'valid port ');
      expect(
        const IsPort().isValid('80.0'),
        isTrue,
        reason: 'it convert the string to int in the end',
      );

      expect(
        const IsPort().isValid('  80.0 '),
        isTrue,
        reason: 'it trims the string',
      );
    });
    test('returns true if is valid port', () {
      expect(
        const IsPort().isValid('x0'),
        isFalse,
        reason: 'not valid to parse to int',
      );
      expect(
        const IsPort().isValid('6x5535'),
        isFalse,
        reason: 'not valid to parse to int',
      );
      expect(
        const IsPort().isValid('8x0'),
        isFalse,
        reason: 'not valid to parse to int',
      );
      expect(
        const IsPort().isValid('80x.0'),
        isFalse,
        reason: 'not valid to parse to int',
      );
      expect(const IsPort().isValid(''), isFalse, reason: 'empty');
      expect(
        const IsPort().isValid('-50'),
        isFalse,
        reason: 'not int the valid ports range',
      );
      expect(
        const IsPort().isValid('-75535'),
        isFalse,
        reason: 'not int the valid ports range',
      );
      expect(
        const IsPort().isValid('65536'),
        isFalse,
        reason: 'not int the valid ports range',
      );
    });
  });
}
