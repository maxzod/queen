import 'package:meta/meta.dart';
import 'package:locators/locators.dart';

abstract class Locators {
  @protected
  @visibleForTesting
  static final container = <String, DependencyManager>{};

  static String _buildKey<T>(String? tag) => '$T${tag ?? ''}';

  static bool contains<S>({
    String? tag,
  }) =>
      container.containsKey(_buildKey<S>(tag));

  static bool containsKey({
    String? key,
  }) =>
      container.containsKey(key);

  static void put<I>(
    I dependency, {
    String? tag,
  }) =>
      _insert(
        SingletonManger<I>(dependency),
        tag: tag,
      );

  static void putLazy<S>(
    S Function() builder, {
    String? tag,
  }) {
    _insert(
      LazySingletonManager<S>(builder),
      tag: tag,
    );
  }

  static void factory<S>(
    S Function() builder, {
    String? tag,
  }) {
    _insert(
      FactoryManager<S>(builder),
      tag: tag,
    );
  }

  static S find<S>({
    String? tag,
  }) {
    final key = _buildKey<S>(tag);
    if (contains<S>(tag: tag)) {
      return container[key]!.build() as S;
    }

    if (tag == null) {
      throw 'Class "$S" is not registered';
    } else {
      throw 'Class "$S" with tag "$tag" is not registered';
    }
  }

  static void delete<S>({
    String? tag,
  }) {
    final key = _buildKey<S>(tag);
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

  static void deleteByKey(String key) {
    if (containsKey(key: key)) {
      container.remove(key);
    } else {
      throw 'key $key is not registered';
    }
  }

  static void clear() {
    final keys = container.keys.toList();
    for (final key in keys) {
      deleteByKey(key);
    }
  }

  /// Injects the Instance [S] builder into the `_singleton` HashMap.
  static void _insert<I>(
    DependencyManager<I> manager, {
    String? tag,
    bool force = false,
  }) {
    final key = _buildKey<I>(tag);

    if (container.containsKey(key) && !force) {
      throw '''
cant put in the container type already exists 
 TO FIX :::
 - change the tag
 - use force
''';
    }

    container[key] = manager;
  }
}
