import 'dart:async';

import 'package:qcore/qcore.dart';

/// gets called before `runApp()`
/// to register or bootstrap other classes
abstract class Launcher {
  /// register anything you want inside the service container
  /// boot your classes here the app won't unless all `Launcher`s are done

  Future<void> boot();

  /// if `false` the Launcher boot will called after the previous one is done
  /// if `true`  will boot in parallel with other Launchers (apps boot faster)
  bool get shouldRunInParallel => true;

  List<Override> overrides() {
    return [];
  }
}
