import 'package:flutter_test/flutter_test.dart';
import 'package:locators/locators.dart';

Future<void> main() async {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
  });
  setUp(() async {
    // await App.boot();
  });
  tearDown(() {
    Locators.clear();
  });
  // test('it return the current locale', () async {
  //   await AppLang.update(const Locale('en'));
  //   expect(
  //     AppLang.current,
  //     const Locale('en'),
  //   );
  // });
}
