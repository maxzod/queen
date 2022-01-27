import 'package:flutter_test/flutter_test.dart';
import 'package:queen/validation/languages/is_rtl_language.dart';

void main() {
  group('is RTL Rule ', () {
    test('return true if language is RTL', () {
      expect(IsRTLLanguage().isValid('ar'), isTrue);
      expect(IsRTLLanguage().isValid('fa'), isTrue);
      expect(IsRTLLanguage().isValid('he'), isTrue);
      expect(IsRTLLanguage().isValid('ps'), isTrue);
      expect(IsRTLLanguage().isValid('ur'), isTrue);
    });
    test('return false if language is LTR', () {
      expect(IsRTLLanguage().isValid('en'), isFalse);
      expect(IsRTLLanguage().isValid('as'), isFalse);
      expect(IsRTLLanguage().isValid('sd'), isFalse);
      expect(IsRTLLanguage().isValid('gg'), isFalse);
      expect(IsRTLLanguage().isValid('jg'), isFalse);
    });
  });
}
