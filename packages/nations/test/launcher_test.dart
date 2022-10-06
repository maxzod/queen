import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locators/locators.dart';
import 'package:nations/nations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  const config = LangConfig();

  setUp(
    () async {
      await PrefsLauncher().boot();
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
