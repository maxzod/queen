import 'package:flutter_test/flutter_test.dart';
import 'package:queen/validation.dart';

void main() {
  group('IsNumber Rule', () {
    //
    test('return true if is valid number', () {
      expect(IsNumber().isValid('0'), isTrue);
      expect(IsNumber().isValid('01'), isTrue);
      expect(IsNumber().isValid('123'), isTrue);
      expect(IsNumber().isValid('-123'), isTrue);
      expect(IsNumber().isValid('-0'), isTrue);
      expect(IsNumber().isValid('50.5'), isTrue);
      expect(IsNumber().isValid('0.5'), isTrue);
      expect(IsNumber().isValid('.5'), isTrue);
      expect(IsNumber().isValid('1.0'), isTrue);
      expect(IsNumber().isValid('0.0'), isTrue);
    });
    test('return false if is valid number', () {
      expect(IsNumber().isValid('a0'), isFalse);
      expect(IsNumber().isValid('O12'), isFalse);
      expect(IsNumber().isValid('50s'), isFalse);
      expect(IsNumber().isValid('  '), isFalse);
      expect(IsNumber().isValid(''), isFalse);
      expect(IsNumber().isValid('AWS'), isFalse);
    });

    //
  });
}
