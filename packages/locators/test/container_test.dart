import 'package:locators/locators.dart';
import 'package:test/test.dart';

class TestInstance extends DependencyManager {
  @override
  build() => throw UnimplementedError();
}

void main() {
  setUp(
    // clear the container before each test
    () => Locators.clear(),
  );

  group(
    'contains',
    () {
      test(
        'it return false if the container is Empty',
        () {
          expect(
            Locators.contains<String>(),
            isFalse,
            reason: 'container is Empty',
          );
        },
      );
      test(
        'it return true if container a instance',
        () {
          LocatorsBase.container['String'] = TestInstance();
          expect(
            Locators.contains<String>(),
            isTrue,
            reason: 'it contains a String',
          );
        },
      );
      test(
        'it return true if contains instance with TAG',
        () {
          LocatorsBase.container['StringFoo'] = TestInstance();
          expect(
            Locators.contains<String>(tag: 'foo'),
            isTrue,
            reason: 'it contains a String with foo tag',
          );
        },
      );
      test(
        'it return false if contains instance with TAG but did not use the tag',
        () {
          LocatorsBase.container['StringBar'] = TestInstance();
          expect(
            Locators.contains<String>(),
            isFalse,
            reason: 'does not contains a string',
          );
        },
      );
    },
  );
  group(
    'put',
    () {
      test(
        'it inserts LazySingletonManager to the container',
        () {
          expect(Locators.contains<String>(), isFalse);
          Locators.put<String>('');
          expect(
            LocatorsBase.container['String'] is SingletonManger,
            isTrue,
          );
        },
      );
      test(
        'it inserts the instance to the container',
        () {
          expect(Locators.contains<String>(), isFalse);
          Locators.put<String>('');
          expect(Locators.contains<String>(), isTrue);
        },
      );
      test(
        'it inserts the instance to the container WITH TAG',
        () {
          expect(Locators.contains<String>(), isFalse);
          Locators.put<String>('', tag: 'q');
          expect(Locators.contains<String>(), isFalse);
          expect(Locators.contains<String>(tag: 'q'), isTrue);
        },
      );
    },
  );
  group(
    'putLazy',
    () {
      test(
        'it inserts LazySingletonManager to the container',
        () {
          expect(Locators.contains<String>(), isFalse);
          Locators.putLazy<String>(() => '');
          expect(
            LocatorsBase.container['String'] is LazySingletonManager,
            isTrue,
          );
        },
      );
      test(
        'it inserts the instance to the container',
        () {
          expect(Locators.contains<String>(), isFalse);
          Locators.putLazy<String>(() => '');
          expect(Locators.contains<String>(), isTrue);
        },
      );
      test(
        'it inserts the instance to the conatiner WITH TAG',
        () {
          expect(Locators.contains<String>(), isFalse);
          Locators.putLazy<String>(() => '', tag: 'q');
          expect(Locators.contains<String>(), isFalse);
          expect(Locators.contains<String>(tag: 'q'), isTrue);
        },
      );
    },
  );
  group(
    'factory',
    () {
      test(
        'it inserts FactoryManager to the conatiner',
        () {
          expect(Locators.contains<String>(), isFalse);
          Locators.factory<String>(() => '');
          expect(
            LocatorsBase.container['String'] is FactoryManager,
            isTrue,
          );
        },
      );
      test(
        'it inserts the instance to the conatiner',
        () {
          expect(Locators.contains<String>(), isFalse);
          Locators.factory<String>(() => '');
          expect(Locators.contains<String>(), isTrue);
        },
      );
      test(
        'it inserts the instace to the conatiner WITH TAG',
        () {
          expect(Locators.contains<String>(), isFalse);
          Locators.factory<String>(() => '', tag: 'q');
          expect(Locators.contains<String>(), isFalse);
          expect(Locators.contains<String>(tag: 'q'), isTrue);
        },
      );
    },
  );
  group(
    'find',
    () {
      test(
        'it return instace from the Container',
        () {
          expect(Locators.contains<StringBuffer>(), isFalse);
          final buff = StringBuffer();
          Locators.put<StringBuffer>(buff);
          expect(identical(buff, Locators.find<StringBuffer>()), isTrue);
        },
      );
      test(
        'it throws if the instance does not exists',
        () {
          expect(() => Locators.find<StringBuffer>(), throwsA(isA<String>()));
          expect(() => Locators.find<StringBuffer>(tag: 'aaa'),
              throwsA(isA<String>()));
        },
      );
    },
  );
  group(
    'delete',
    () {
      test(
        'it delete instace from the Container',
        () {
          expect(Locators.contains<StringBuffer>(), isFalse);
          Locators.put<StringBuffer>(StringBuffer());
          expect(Locators.contains<StringBuffer>(), isTrue);
          Locators.delete<StringBuffer>();
          expect(Locators.contains<StringBuffer>(), isFalse);
        },
      );
      test(
        'it throws if the instance does not exists',
        () {
          expect(() => Locators.delete<StringBuffer>(), throwsA(isA<String>()));
          expect(() => Locators.delete<StringBuffer>(tag: 'aaa'),
              throwsA(isA<String>()));
        },
      );
    },
  );
  group(
    'deleteByKey',
    () {
      test(
        'it throws if the instance does not exists',
        () {
          expect(() => Locators.deleteByKey(''), throwsA(isA<String>()));
        },
      );
    },
  );
}
