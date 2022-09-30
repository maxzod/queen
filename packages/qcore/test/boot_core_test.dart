import 'dart:async';

import 'package:qcore/qcore.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

final _fakeProvider = Provider((_) => 0);

class _TestLauncher extends Launcher {
  bool booted = false;

  @override
  Future<void> boot() async {
    booted = true;
  }

  @override
  List<Override> overrides() {
    return [
      if (booted) _fakeProvider.overrideWithValue(1),
    ];
  }
}

void main() {
  test('it boots and return overrides', () async {
    final overrides = await bootLaunchers([_TestLauncher()]);
    expect(overrides, isNotEmpty);
  });
}
