import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart' hide find;
import 'package:nations/src/extract/base.dart';
import 'package:queen/queen.dart';

Future<void> main() async {
  tearDown(() {
    Locators.clear();
  });

  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
  });
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await App.boot();
    await find<TransController>().load(const Locale('ar'));
  });
  test('it return null if key does not exist', () {
    final data = ExtractedData.parse('null_key');
    expect(data, isA<NotFoundData>());
  });
  test('if key ends with . it wont matter', () {
    final data = ExtractedData.parse('foo.');
    expect(data, isA<NotFoundData>());
  });
  test('return NotFoundData if the key type is not supported', () {
    final data = ExtractedData.parse('bar');
    expect(data, isA<NotFoundData>());
  });
}
