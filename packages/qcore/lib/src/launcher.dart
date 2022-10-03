import 'dart:async';

/// gets called before `runApp()`
/// to register or bootstrap other classes
abstract class Launcher {
  const Launcher();

  /// register anything you want inside the service container
  /// boot your classes here the app won't unless all `Launcher`s are done
  FutureOr<void> boot();

  /// if `false` the Launcher boot will called after the previous one is done
  /// if `true`  will boot in parallel with other Launchers (apps boot faster)
  bool get shouldRunInParallel => true;
}

class RootLauncher extends Launcher {
  final List<Launcher> launchers;

  RootLauncher(this.launchers);

  @override
  FutureOr<void> boot() async {
    /// boots series launchers
    /// then boots all parallel launchers
    final parallel = <Launcher>[];
    final series = <Launcher>[];

    for (final launcher in launchers) {
      (launcher.shouldRunInParallel ? parallel : series).add(launcher);
    }

    for (final sLauncher in series) {
      await sLauncher.boot();
    }

    await Future.wait(
      parallel.map(
        (e) async => await e.boot(),
      ),
    );
  }
}
