import 'package:flutter_test/flutter_test.dart';
import 'package:nations/src/extract/base.dart';
import 'package:queen/queen.dart';

Future<void> main() async {
  await App.boot();
  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
  });
  tearDownAll(() async {
    Locators.clear();
  });

  test('it return not found if value does not exist', () {
    /// *
    final data = ExtractedData.parse('key_which_does_not_exist');
    expect(data, isA<NotFoundData>());
  });
}
