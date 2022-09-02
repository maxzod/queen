import 'package:locators/locators.dart';

abstract class DepndancyManager<S> with LifeCycleManager {
  bool initCalled = false;

  DepndancyManager() {
    onConstruct(this);
  }

  S build();

  void initIfNeeded() {
    if (!initCalled && S is HasOnInit) {}
  }
}

class SingletoneManger<S> extends DepndancyManager<S> {
  final S dependency;

  SingletoneManger(this.dependency) {
    initIfNeeded();
  }

  @override
  S build() => onBuild(this, dependency);
}

class LazySingletoneManager<S> extends DepndancyManager<S> {
  S? dependency;
  final S Function() builder;

  LazySingletoneManager(this.builder);

  @override
  S build() => onBuild(this, dependency ??= builder());
}

class FactroyManager<S> extends DepndancyManager<S> {
  final S Function() builder;

  FactroyManager(this.builder);

  @override
  S build() => onBuild(this, builder());
}
