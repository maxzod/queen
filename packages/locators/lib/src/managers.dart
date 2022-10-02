import 'package:locators/locators.dart';

abstract class DependencyManager<S>
// with LifeCycleManager
{
  // bool initCalled = false;

  // DependencyManager() {
  //   onConstruct(this);
  // }

  S build();

  // void initIfNeeded() {
  //   if (!initCalled && S is HasOnInit) {}
  // }
}

class SingletonManger<S> extends DependencyManager<S> {
  final S dependency;

  SingletonManger(this.dependency) {
    // initIfNeeded();
  }

  @override
  S build() => dependency;
  // S build() => onBuild(this, dependency);
}

class LazySingletonManager<S> extends DependencyManager<S> {
  S? dependency;

  final S Function() builder;

  LazySingletonManager(this.builder);

  @override
  S build() => dependency ??= builder();
  // S build() => onBuild(this, dependency ??= builder());
}

class FactoryManager<S> extends DependencyManager<S> {
  final S Function() builder;

  FactoryManager(this.builder);

  @override
  S build() => builder();
  // S build() => onBuild(this, builder());
}
