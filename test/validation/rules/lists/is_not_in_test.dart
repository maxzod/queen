import 'package:flutter_test/flutter_test.dart';
import 'package:queen/validation.dart';

void main() {
  const stringsList = <String>[
    'foo',
    'bar',
    'zee',
    'queen',
    'validators',
    'palace',
    'dart',
    'flutter'
  ];
  group('IsNotIn Rule', () {
    test(
      'it returns true if is in the list',
      () {
        expect(IsNotIn(stringsList).isValid('foo'), isFalse);
        expect(IsNotIn(stringsList).isValid('bar'), isFalse);
        expect(IsNotIn(stringsList).isValid('queen'), isFalse);
        expect(IsNotIn(stringsList).isValid('dart'), isFalse);
        expect(IsNotIn(stringsList).isValid('flutter'), isFalse);
      },
    );
    test('it returns false if is in the list', () {
      expect(IsNotIn(stringsList).isValid('fooOO'), isTrue);
      expect(IsNotIn(stringsList).isValid('barLL'), isTrue);
      expect(IsNotIn(stringsList).isValid('queenL'), isTrue);
      expect(IsNotIn(stringsList).isValid('dDaRt'), isTrue);
      expect(IsNotIn(stringsList).isValid('Flutter'), isTrue);
    });
  });
}
