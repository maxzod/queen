import 'package:flutter_test/flutter_test.dart';
import 'package:queen/validation.dart';

void main() {
  group('IsRequired rule', () {
    test(
      'it should return True when the there is text even single char',
      () {
        expect(IsRequired().isValid('q'), isTrue);
        expect(IsRequired().isValid('abcdef'), isTrue);
        expect(IsRequired().isValid('  word  '), isTrue);
      },
    );
    test(
      'it should return False when the trimmed text is empty',
      () {
        expect(IsRequired().isValid(''), isFalse);
        expect(IsRequired().isValid('   '), isFalse);
        expect(
          IsRequired().isValid(
            '''

        ''',
          ),
          isFalse,
        );
      },
    );
  });
  group('IsRequired rule', () {
    test(
      'it should return True when the there is text even single char',
      () {
        expect(IsRequired().isValid('q'), isTrue);
        expect(IsRequired().isValid('abcdef'), isTrue);
        expect(IsRequired().isValid('  word  '), isTrue);
      },
    );
    test(
      'it should return False when the trimmed text is empty',
      () {
        expect(IsRequired().isValid(''), isFalse);
        expect(IsRequired().isValid('   '), isFalse);
        expect(
          IsRequired().isValid(
            '''

        ''',
          ),
          isFalse,
        );
      },
    );
  });
}
