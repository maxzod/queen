import 'package:flutter_test/flutter_test.dart';
import 'package:queen/validation.dart';

void main() {
  group('is Empty rule', () {
    test(
      'return True when the value is empty after trimming',
      () {
        expect(IsEmpty().isValid(''), isTrue);
        expect(IsEmpty().isValid('   '), isTrue);
        expect(
          IsEmpty().isValid(
            '''

        ''',
          ),
          isTrue,
        );
      },
    );
    test(
      'return False when the trimmed text is not empty',
      () {
        expect(IsEmpty().isValid('q'), isFalse);
        expect(IsEmpty().isValid('abcdef'), isFalse);
        expect(IsEmpty().isValid('  word  '), isFalse);
      },
    );
  });
}
