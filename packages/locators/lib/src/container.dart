import 'package:locators/locators.dart';
import 'package:locators/src/helpers.dart';

import 'interface.dart';

// ignore: non_constant_identifier_names
final Locators = LocatorsContainer();

class LocatorsContainer extends ContainerInterface {
  @override
  bool contains<T>({
    String? tag,
  }) =>
      container.containsKey(buildKey<T>(tag));

  @override
  bool containsKey({
    String? key,
  }) =>
      container.containsKey(key);

  @override
  void put<I>(
    I dependency, {
    String? tag,
  }) =>
      insert(
        SingletonManger<I>(dependency),
        tag: tag,
      );
  @override
  void putIfAbsent<I>(
    I dependency, {
    String? tag,
  }) =>
      contains<I>(tag: tag)
          ? null
          : insert(
              SingletonManger<I>(dependency),
              tag: tag,
            );
  @override
  void putLazy<S>(
    S Function() builder, {
    String? tag,
  }) {
    insert(
      LazySingletonManager<S>(builder),
      tag: tag,
    );
  }

  @override
  void putLazyIfAbsent<S>(S Function() builder, {String? tag}) =>
      contains<S>(tag: tag)
          ? null
          : insert(
              LazySingletonManager<S>(builder),
              tag: tag,
            );
  @override
  void factory<S>(
    S Function() builder, {
    String? tag,
  }) {
    insert(
      FactoryManager<S>(builder),
      tag: tag,
    );
  }

  @override
  void factoryIfAbsent<S>(S Function() builder, {String? tag}) =>
      contains<S>(tag: tag)
          ? null
          : insert(
              FactoryManager<S>(builder),
              tag: tag,
            );

  @override
  S find<S>({
    String? tag,
  }) {
    final key = buildKey<S>(tag);
    if (contains<S>(tag: tag)) {
      return container[key]!.build() as S;
    }

    if (tag == null) {
      throw 'Class "$S" is not registered';
    } else {
      throw 'Class "$S" with tag "$tag" is not registered';
    }
  }

  @override
  void delete<S>({
    String? tag,
  }) {
    final key = buildKey<S>(tag);
    if (contains<S>(tag: tag)) {
      container.remove(key);
    } else {
      if (tag == null) {
        throw 'Class "$S" is not registered';
      } else {
        throw 'Class "$S" with tag "$tag" is not registered';
      }
    }
  }

  @override
  void deleteByKey(String key) {
    if (containsKey(key: key)) {
      container.remove(key);
    } else {
      throw 'key $key is not registered';
    }
  }

  @override
  void clear() {
    final keys = container.keys.toList();
    for (final key in keys) {
      deleteByKey(key);
    }
  }
}
