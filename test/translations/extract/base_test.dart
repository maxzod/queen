import 'package:flutter_test/flutter_test.dart';
import 'package:queen/facades/app.dart';
import 'package:queen/locators.dart';
import 'package:queen/translations/extract/base.dart';

Future<void> main() async {
  await App.boot();
  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
  });
  tearDownAll(() async {
    await Locators.reset();
  });

  test('it return not found if value does not exist', () {
    /// *
    final data = ExtractedData.parse('key_which_does_not_exist');
    expect(data, isA<NotFoundData>());
  });
}
