import 'package:flutter_test/flutter_test.dart';
import 'package:queen/validation.dart';

void main() {
  group('is RTL Rule ', () {
    test('return false if language is RTL', () {
      expect(IsLtrLanguage().isValid('ar'), isFalse);
      expect(IsLtrLanguage().isValid('fa'), isFalse);
      expect(IsLtrLanguage().isValid('he'), isFalse);
      expect(IsLtrLanguage().isValid('ps'), isFalse);
      expect(IsLtrLanguage().isValid('ur'), isFalse);
    });
    test('return true if language is LTR', () {
      expect(IsLtrLanguage().isValid('en'), isTrue);
      expect(IsLtrLanguage().isValid('fr'), isTrue);
      expect(IsLtrLanguage().isValid('it'), isTrue);
      expect(IsLtrLanguage().isValid('pr'), isTrue);
      expect(IsLtrLanguage().isValid('de'), isTrue);
    });
  });
}
