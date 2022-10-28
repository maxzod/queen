import 'dart:async';

import 'package:nations/nations.dart';

class TestAssetsLoader extends NationsLoader {
  const TestAssetsLoader() : super('');

  @override
  FutureOr<Map<String, Object?>> load(Locale locale) {
    return testAssets;
  }
}

const testAssets = <String, Object>{};
