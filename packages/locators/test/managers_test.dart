import 'package:locators/managers.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'SingletoneManger',
    () {
      test(
        'it return the same instance always',
        () {
          final msg = 'foo';
          final m = SingletoneManger(msg);
          expect(identical(msg, m.build()), isTrue);
        },
      );
    },
  );

  group(
    'LazySingletoneManager',
    () {
      test(
        'it does not build until build calls',
        () {
          final m = LazySingletoneManager(() => 'foo');
          expect(m.dependency, isNull);
          expect(m.build(), 'foo');
          expect(m.dependency, 'foo');
        },
      );
    },
  );
  group(
    'FactroyManager',
    () {
      test(
        'it builds new object every time',
        () {
          final m = FactroyManager(() => StringBuffer());
          expect(
            identical(m.build(), m.build()),
            isFalse,
          );
        },
      );
    },
  );
}
