import 'package:flutter_test/flutter_test.dart';
import 'package:queen/validation.dart';

void main() {
  const validDates = <String>[
    '2017-11-10 00:26:13.373469',
    '2017-11-10 00:26:13',
    '2017-11-10 22:26:13.373469Z',
    '2017-11-10',
  ];
  const notValidDates = <String>[
    /// using `/` instead of `-` will case failure
    '2017/11/10 00:26:13.373469',
    '2017/11/10 22:26:13.373469Z',
    '2017/11/10',
  ];

  test('valid dates test', () {
    for (final date in validDates) {
      expect(const IsDate().isValid(date), isTrue);
    }
  });
  test('***NOT*** valid dates test', () {
    for (final date in notValidDates) {
      expect(const IsDate().isValid(date), isFalse);
    }
  });
}
