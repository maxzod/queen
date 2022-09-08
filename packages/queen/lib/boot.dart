import 'package:queen/queen.dart';

///
Future<void> runQueen({
  required BaseAppConfig config,
}) async {
  await bootLaunchers(config.launchers);
}

/// calls register for all lanchers
/// then boots series launchers
/// then boots all parrel launchers
Future<void> bootLaunchers(List<Launcher> launchers) async {
  final parrel = <Launcher>[];
  final series = <Launcher>[];
  for (final launcher in launchers) {
    (launcher.shouldRunInParallel ? parrel : series).add(launcher);
  }
  await series.loop((e) => e.boot());
  await Future.wait(
    parrel.map((e) async => e.boot()),
  );
}
