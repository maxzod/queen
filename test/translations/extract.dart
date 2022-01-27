// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:queen/queen.dart';
// import 'package:queen/translations/extract/base.dart';

// Future<void> main() async {
//   await App.boot(nationsConfig: NationsConfig());

//   tearDownAll(() async {
//     await Locator.reset();
//   });
//   setUp(() async {
//     TestWidgetsFlutterBinding.ensureInitialized();
//     await Locator.find<TransController>().load(const Locale('ar'));
//   });
//   test('it return null if key does not exist', () {
//     final data = ExtractedData.parse('null_key');
//     expect(data, isA<NotFoundData>());
//   });
//   test('if key ends with . it wont matter', () {
//     final data = ExtractedData.parse('foo.');
//     expect(data, isA<NotFoundData>());
//   });
//   test('return NotFoundData if the key type is not supported', () {
//     final data = ExtractedData.parse('bar');
//     expect(data, isA<NotFoundData>());
//   });
// }
