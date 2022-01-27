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
  group('IsIn Rule', () {
    test(
      'it returns true if is in the list',
      () {
        expect(IsIn(stringsList).isValid('foo'), isTrue);
        expect(IsIn(stringsList).isValid('bar'), isTrue);
        expect(IsIn(stringsList).isValid('queen'), isTrue);
        expect(IsIn(stringsList).isValid('dart'), isTrue);
        expect(IsIn(stringsList).isValid('flutter'), isTrue);
      },
    );
    test('it returns false if is in the list', () {
      expect(IsIn(stringsList).isValid('fooOO'), isFalse);
      expect(IsIn(stringsList).isValid('barLL'), isFalse);
      expect(IsIn(stringsList).isValid('queenL'), isFalse);
      expect(IsIn(stringsList).isValid('dDaRt'), isFalse);
      expect(IsIn(stringsList).isValid('Flutter'), isFalse);
    });
  });
}
