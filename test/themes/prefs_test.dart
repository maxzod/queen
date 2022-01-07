import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:queen/queen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TestConfig extends QThemeConfig {
  @override
  List<QTheme> get themes => [
        QTheme(
          theme: ThemeData.dark(),
          name: 'Dark',
        ),
        QTheme(
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.yellow,
          ),
          name: 'Yellow',
        ),
        QTheme(
          theme: ThemeData.light(),
          name: 'Light',
        ),
        QTheme(
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.red,
          ),
          name: 'Red',
        ),
      ];
}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QueenBuilder(
      builder: (ctx) => MaterialApp(
        theme: Queen.currentTheme,
        home: Scaffold(
          body: Center(
            child: Text(Queen.currentIndex.toString()),
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
    await Queen.bootTheme(TestConfig());
  });
  test(
    'it saves the theme to shared preferences',
    () async {
      await Queen.nextTheme();
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
