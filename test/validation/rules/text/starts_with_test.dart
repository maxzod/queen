import 'package:flutter_test/flutter_test.dart';
import 'package:queen/validation.dart';

void main() {
  group(
    'StartsWith rule',
    () {
      test('trims the string before checking', () {
        expect(StartsWith('q').isValid('    queen    '), isTrue);
      });

      test('returns true when text starts with pattern', () {
        expect(StartsWith('qu').isValid('queen'), isTrue);
      });

      test('returns false when text does not starts with pattern', () {
        expect(StartsWith('king').isValid('queen'), isFalse);
      });
    },
  );
}
