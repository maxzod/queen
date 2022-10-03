import 'package:locators/locators.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'LifeCycleManager',
    () {
      test(
        'it calls onInit with SingletonManger always',
        () {},
      );
    },
  );
  group(
    'SingletonManger',
    () {
      test(
        'it return the same instance always',
        () {
          final msg = 'foo';
          final m = SingletonManger(msg);
          expect(identical(msg, m.build()), isTrue);
        },
      );
    },
  );

  group(
    'LazySingletonManager',
    () {
      test(
        'it does not build until build calls',
        () {
          final m = LazySingletonManager(() => 'foo');
          expect(m.dependency, isNull);
          expect(m.build(), 'foo');
          expect(m.dependency, 'foo');
        },
      );
    },
  );
  group(
    'FactoryManager',
    () {
      test(
        'it builds new object every time',
        () {
          final m = FactoryManager(() => StringBuffer());
          expect(
            identical(m.build(), m.build()),
            isFalse,
          );
        },
      );
    },
  );
}
