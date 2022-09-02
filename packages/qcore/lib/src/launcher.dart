import 'dart:async';

/// gets called before `runApp()`
/// to register or bootstrap other classes
abstract class Launcher {
  /// register anything you want inside
  /// the service container
  void register();

  /// boot your classes here the app won't
  /// unluess all `Launcher`s are done
  FutureOr<void> boot();

  /// if `false` the Launcher boot will callled after the previous one is done
  /// if `true`  will boot in parlle with other Launchers (apps boot faster)
  bool get shouldRunInParallel => true;
}
