import 'package:locators/locators.dart';

// mixin LifeCycleManager<T> {
//   void onConstruct(DependencyManager<T> manager) {
//     if (manager is SingletonManger && T is HasOnInit) {
//       ((manager as SingletonManger).dependency as HasOnInit).onInit();
//     }
//   }

//   T onBuild(
//     DependencyManager<T> manager,
//     T instance,
//   ) {
//     return instance;
//   }
// }

abstract class HasOnInit {
  /// called once the object added to the container
  void onInit();
}

abstract class HasOnReady with HasOnInit {
  void onReady();
}

abstract class HasOnDelete {
  /// called after the object deleted from the container
  void onDelete();
}

abstract class HasOnClose {
  /// called after the object deleted from the container
  void onClose();
}

mixin AlwaysAlive {}

mixin HasLifeCycle implements HasOnInit, HasOnDelete, HasOnClose, HasOnReady {
  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onDelete() {}

  @override
  void onClose() {}
}
