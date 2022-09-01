abstract class DepndancyManager<S> {
  S build();
}

class SingletoneManger<S> extends DepndancyManager<S> {
  final S dependency;

  SingletoneManger(this.dependency);

  @override
  S build() => dependency;
}

class LazySingletoneManager<S> extends DepndancyManager<S> {
  S? dependency;
  final S Function() builder;

  LazySingletoneManager(this.builder);

  @override
  S build() => dependency ??= builder();
}

class FactroyManager<S> extends DepndancyManager<S> {
  final S Function() builder;

  FactroyManager(this.builder);

  @override
  S build() => builder();
}
