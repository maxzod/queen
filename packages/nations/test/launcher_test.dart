import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locators/locators.dart';
import 'package:nations/nations.dart';
import 'package:qcore/qcore.dart';

import 'test_assets.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const config = LangConfig(
    baseLoader: TestAssetsLoader(),
    loaders: [],
  );

  setUp(
    () async {
      await bootLaunchers([PrefsLauncher()]);
    },
  );
  tearDown(
    () {
      Locators.clear();
    },
  );
  test(
    'it register the config in the locators',
    () async {
      const launcher = LangLauncher(config);
      await launcher.boot();
      expect(identical(Locators.find<LangConfig>(), config), isTrue);
    },
  );
  test(
    'it creates new TransController and register it in the locators',
    () async {
      const launcher = LangLauncher(config);
      await launcher.boot();
      expect(Locators.contains<TransNotifier>(), isTrue);
    },
  );
  test(
    'it boots the registered controller',
    () async {
      await const LangLauncher(config).boot();
      expect(Locators.find<TransNotifier>().currentLocale, isNotNull);
    },
  );
}
