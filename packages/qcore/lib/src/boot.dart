import 'launcher.dart';

/// boots series launchers
/// then boots all parallel launchers
Future<void> bootLaunchers(List<Launcher> launchers) async {
  await RootLauncher(launchers).boot();

  // final parallel = <Launcher>[];
  // final series = <Launcher>[];

  // for (final launcher in launchers) {
  //   (launcher.shouldRunInParallel ? parallel : series).add(launcher);
  // }

  // for (final sLauncher in series) {
  //   if (sLauncher.dependsOn().isNotEmpty) {
  //     await bootLaunchers(sLauncher.dependsOn());
  //   }
  //   await sLauncher.boot();
  // }

  // await Future.wait(
  //   parallel.map(
  //     (e) async => await e.boot(),
  //   ),
  // );
}
