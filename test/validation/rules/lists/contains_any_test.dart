import 'package:flutter_test/flutter_test.dart';
import 'package:queen/validation.dart';

void main() {
  const list = <String>['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'q'];
  group('ContainsAny Rule', () {
    test('returns true if string contains any item of the list', () {
      expect(ContainsAny(list).isValid('HHHH'), isTrue);
      expect(ContainsAny(list).isValid('hhh'), isTrue);
      expect(ContainsAny(list).isValid('Faded'), isTrue);
      expect(ContainsAny(list).isValid('Queen'), isTrue);
      expect(ContainsAny(list).isValid('ddt'), isTrue);
    });
    test('returns false if string does not contains any item of the list', () {
      expect(ContainsAny(list).isValid('JJJJ'), isFalse);
      expect(ContainsAny(list).isValid('kli'), isFalse);
      expect(ContainsAny(list).isValid('Row'), isFalse);
      expect(ContainsAny(list).isValid('rss'), isFalse);
      expect(ContainsAny(list).isValid('json'), isFalse);
    });
  });
}
