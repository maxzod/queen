import 'package:flutter_test/flutter_test.dart';
import 'package:queen/validation.dart';

void main() {
  test(
    'returns false if the two objects are not the matched',
    () {
      /// *  string type
      const stringFoo = 'queen';
      const stringBar = 'king';
      expect(match(stringFoo, stringBar), isFalse);

      /// *  bool type
      const boolFoo = true;
      const boolBar = false;
      expect(match(boolFoo, boolBar), isFalse);

      /// *  int type
      const intFoo = 1;
      const intBar = 2;
      expect(match(intFoo, intBar), isFalse);

      /// *  double type
      const doubleFoo = 1.1;
      const doubleBar = 2.2;
      expect(match(doubleFoo, doubleBar), isFalse);
    },
  );

  group(
    'Match rule',
    () {
      test(
        'does not trim the strings',
        () {
          expect(Match('   QUEEN   ').isValid('   QUEEN   '), isTrue);
        },
      );

      test(
        'returns True when are matched',
        () {
          expect(Match('queen').isValid('queen'), isTrue);
          expect(Match('queen_validators').isValid('queen_validators'), isTrue);
          expect(Match('QueeN_Validators').isValid('QueeN_Validators'), isTrue);
        },
      );
      test(
        'returns True when are matched and ignoring case sensitivity',
        () {
          expect(
            Match('queen', caseSensitive: false).isValid('Queen'),
            isTrue,
          );
          expect(
            Match('queen_validators', caseSensitive: false)
                .isValid('QUEEN_VALIDATORS'),
            isTrue,
          );
          expect(
            Match('QueeN _ Validators', caseSensitive: false)
                .isValid('QUEEN _ ValidAtorS'),
            isTrue,
          );
        },
      );
      test(
        'returns False when are not matched',
        () {
          expect(Match('queen').isValid('Fqueen'), isFalse);
          expect(
            Match('queen_validators').isValid('Fqueen_validators'),
            isFalse,
          );
          expect(
            Match('QueeN_Validators').isValid('FQueeN_Validators'),
            isFalse,
          );
        },
      );
      test(
        'returns False when are not matched and ignoring case sensitivity',
        () {
          expect(
            Match(
              'Fqueen',
              caseSensitive: false,
            ).isValid('Queen'),
            isFalse,
          );
          expect(
            Match(
              'queen_validators',
              caseSensitive: false,
            ).isValid('FQUEEN_VALIDATORS'),
            isFalse,
          );
          expect(
            Match('QueeN_Validators', caseSensitive: false).isValid(
              'FQUEEN_ValidAtorS',
            ),
            isFalse,
          );
        },
      );
    },
  );
}
