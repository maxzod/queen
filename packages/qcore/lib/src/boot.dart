import 'package:flutter/cupertino.dart';
import 'package:qcore/qcore.dart';

abstract class AppConfig {
  List<Launcher> get launchers;
}

Future<void> bootQueenApp({
  required AppConfig config,
  required Widget child,
  List<ProviderObserver>? observers,
}) async {
  runApp(
    ProviderScope(
      overrides: await bootLaunchers(config.launchers),
      observers: observers,
      child: child,
    ),
  );
}

/// calls register for all launchers
/// then boots series launchers
/// then boots all parallel launchers
Future<List<Override>> bootLaunchers(List<Launcher> launchers) async {
  final parallel = <Launcher>[];
  final series = <Launcher>[];
  final overrides = <Override>[];

  for (final launcher in launchers) {
    (launcher.shouldRunInParallel ? parallel : series).add(launcher);
  }
  for (final sLauncher in series) {
    await sLauncher.boot();
    final sOverrides = sLauncher.overrides();
    if (sOverrides.isNotEmpty) {
      overrides.addAll(sOverrides);
    }
  }
  await Future.wait(
    parallel.map(
      (e) async => await e.boot(),
    ),
  );
  for (final pL in parallel) {
    overrides.addAll(pL.overrides());
  }

  return overrides;
}
