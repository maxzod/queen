import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nations/nations.dart';
import 'package:queen/queen.dart';

Future<void> main() async {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await App.boot();
  });
  tearDown(() async {
    await Locators.reset();
  });
  test('it return the current locale', () async {
    expect(
      Lang.current,
      const Locale('ar'),
    );
    await Lang.update(const Locale('en'));
    expect(
      Lang.current,
      const Locale('en'),
    );
  });
}
