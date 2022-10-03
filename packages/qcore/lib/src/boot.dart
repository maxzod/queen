import 'launcher.dart';

/// boots series launchers
/// then boots all parallel launchers
Future<void> bootLaunchers(List<Launcher> launchers) async {
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
