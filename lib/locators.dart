library locators;

import 'package:get_it/get_it.dart';

final _container = GetIt.instance;

abstract class Locators {
  /// put the instance in the container
  static T put<T extends Object>(T instance) {
    _container.registerSingleton(instance);
    return instance;
  }

  static void putLazy<T extends Object>(
    T Function() builder,
  ) =>
      _container.registerLazySingleton(builder);

  static void putFactory(
    Object Function() factory,
  ) =>
      _container.registerFactory(factory);

  static T find<T extends Object>({String? tag}) =>
      _container.get<T>(instanceName: tag);

  // static T findOrNull<T extends Object>({String? tag}) =>
  // _container.get<T>(instanceName: tag);

  static Future<void> reset({
    bool dispose = true,
  }) =>
      _container.reset(dispose: dispose);
}
