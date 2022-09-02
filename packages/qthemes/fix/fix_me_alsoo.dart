// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:queen/queen.dart';
// import 'package:qthemes/qthemes.dart';

// class TestConfig extends ThemeConfig {
//   @override
//   List<QTheme> get themes => [
//         QTheme(
//           theme: ThemeData.dark(),
//           name: 'Dark',
//           id: 'Dark',
//         ),
//         QTheme(
//           theme: ThemeData(
//             scaffoldBackgroundColor: Colors.yellow,
//           ),
//           name: 'Yellow',
//           id: 'Yellow',
//         ),
//         QTheme(
//           theme: ThemeData.light(),
//           name: 'Light',
//           id: 'Light',
//         ),
//         QTheme(
//           theme: ThemeData(
//             scaffoldBackgroundColor: Colors.red,
//           ),
//           name: 'Red',
//           id: 'Red',
//         ),
//         QTheme(
//           theme: ThemeData(
//             scaffoldBackgroundColor: Colors.cyan,
//           ),
//           name: 'cyan',
//           id: 'cyan',
//         ),
//         theme,
//       ];
// }

// final theme = QTheme(id: '_id', name: '_name', theme: ThemeData.dark());

// void main() {
//   TestWidgetsFlutterBinding.ensureInitialized();

//   setUp(() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.clear();
//     // await App.boot(themeConfig: TestConfig());
//   });
//   tearDown(() async {
//     await App.dispose();
//   });
//   test('it updates theme', () async {
//     expect(AppTheme.qTheme == theme, isFalse);
//     AppTheme.updateTo(theme);
//     expect(AppTheme.qTheme == theme, isTrue);
//   });
//   test('it updates theme by name', () async {
//     expect(AppTheme.qTheme == theme, isFalse);
//     await AppTheme.updateByName('_name');
//     expect(
//       AppTheme.qTheme.name,
//       '_name',
//     );
//   });
//   test('it updates theme by index', () async {
//     expect(
//       AppTheme.qTheme.name == 'Red',
//       isFalse,
//     );
//     await AppTheme.updateByIndex(3);
//     expect(
//       AppTheme.qTheme.name,
//       'Red',
//     );
//   });
// }
