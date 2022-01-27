import 'package:flutter_test/flutter_test.dart';
import 'package:queen/validation.dart';

List<String> value = [
  'go',
  'nice',
  'shit',
  'facebook',
  'git',
  'cubit',
  'flutter',
];

void main() {
  group('Not Contains Any (Rule)', () {
    test('Return true if list not contains String ', () {
      expect(NotContainsAny(value).isValid('hazem'), isTrue);
      expect(NotContainsAny(value).isValid('ahmed'), isTrue);
      expect(NotContainsAny(value).isValid('ali'), isTrue);
      expect(NotContainsAny(value).isValid('twitter'), isTrue);
      expect(NotContainsAny(value).isValid('yahoo'), isTrue);
      expect(NotContainsAny(value).isValid('messenger'), isTrue);
      expect(NotContainsAny(value).isValid('hell'), isTrue);
    });
    test('Return false if list contains String ', () {
      expect(NotContainsAny(value).isValid('go'), isFalse);
      expect(NotContainsAny(value).isValid('nice'), isFalse);
      expect(NotContainsAny(value).isValid('shit'), isFalse);
      expect(NotContainsAny(value).isValid('facebook'), isFalse);
      expect(NotContainsAny(value).isValid('git'), isFalse);
      expect(NotContainsAny(value).isValid('cubit'), isFalse);
      expect(NotContainsAny(value).isValid('flutter'), isFalse);
    });
  });
}
