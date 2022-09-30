import 'package:flutter_test/flutter_test.dart';
import 'package:queen/queen.dart';

Future<void> main() async {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
  });
  setUp(() async {
    await AppF.boot();
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
