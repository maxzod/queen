abstract class DependencyManager<S> {
  const DependencyManager();
  S build();
}

class SingletonManger<S> extends DependencyManager<S> {
  final S dependency;

  const SingletonManger(this.dependency);

  @override
  S build() => dependency;
}

class LazySingletonManager<S> extends DependencyManager<S> {
  S? dependency;

  final S Function() builder;

  LazySingletonManager(this.builder);

  @override
  S build() => dependency ??= builder();
}

class FactoryManager<S> extends DependencyManager<S> {
  final S Function() builder;

  const FactoryManager(this.builder);

  @override
  S build() => builder();
}
