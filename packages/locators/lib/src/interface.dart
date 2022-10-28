import 'package:locators/src/helpers.dart';
import 'package:meta/meta.dart';

import '../../locators.dart';

abstract class ContainerInterface {
  @protected
  @visibleForTesting
  final container = <String, DependencyManager>{};

  /// return true if the the container contains a Type
  bool contains<T>({String? tag});

  /// return true if the the container contains a key
  bool containsKey({String? key});

  /// insert `dependency` into the container
  void put<I>(I dependency, {String? tag});

  /// insert dependency builder function into the container
  /// builds the dependency only once (when first needed)
  void putLazy<S>(S Function() builder, {String? tag});

  /// insert dependency factory into the container
  /// build a new instance every time needed
  void factory<S>(S Function() builder, {String? tag});

  /// return `dependency` from the container
  /// retrieving behavior might changes and depends on how did you insert it
  S find<S>({String? tag});

  /// delete a `dependency` from the container
  void delete<S>({String? tag});

  /// delete a `dependency` from the container by the key
  void deleteByKey(String key);

  /// clear the container from every thing
  void clear();

  /// inserts the manger into the container
  @protected
  @visibleForTesting
  void insert<I>(
    DependencyManager<I> manager, {
    String? tag,
    bool force = false,
  }) {
    final key = buildKey<I>(tag);

    if (container.containsKey(key) && !force) {
      throw '''
cant put in the container type already exists 
 TO FIX :::
 - change the tag
 - use force
''';
    }
    // todo :: dispose before replace
    container[key] = manager;
  }
  // void putAsyncIfAbsent<I>(
  //   I dependency, {
  //   String? tag,
  // }) =>
  //     (throw UnimplementedError());

}
