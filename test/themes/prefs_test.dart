import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:queen/queen.dart';
import 'package:queen/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TestConfig extends QThemeConfig {
  @override
  List<ThemeData> get themes => [
        ThemeData.dark(),
        ThemeData.light(),
        ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
        ),
        ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.red,
        ),
      ];
}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QueenBuilder(
      builder: (ctx) => MaterialApp(
        theme: QTheme.current,
        home: Scaffold(
          body: Center(
            child: Text(QTheme.currentIndex.toString()),
          ),
        ),
      ),
    );
  }
}

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({
      'queen.theme.index': 1,
    });
    await QTheme.boot(TestConfig());
  });
  test(
    'it saves the theme to shared preferences',
    () async {
      await QTheme.next();
      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getInt('queen.theme.index'), 2);
    },
  );
  testWidgets(
    'it loads last selected theme when it boots',
    (WidgetTester tester) async {
      /// * pump the app
      await tester.pumpWidget(const TestApp());

      final counterZero = find.text('1');
      expect(counterZero, findsOneWidget);
    },
  );
}
