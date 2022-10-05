import 'dart:async';

import 'package:locators/locators.dart';
import 'package:qcore/qcore.dart';

import '../nations.dart';

/// initialize nations package
class LangLauncher extends Launcher {
  /// initial config
  final LangConfig config;

  const LangLauncher(this.config);

  @override
  FutureOr<void> boot() async {
    Locators.put<LangConfig>(config);
    final _transController = TransNotifier();
    Locators.put(_transController);
    await _transController.boot();
  }
}
