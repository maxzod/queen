import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:queen/queen.dart';
import 'package:queen_thems/config.dart';
import 'package:queen_thems/themes.dart';

class TestConfig extends ThemeConfig {
  @override
  List<QTheme> get themes => [
        QTheme(
          theme: ThemeData.dark(),
          name: 'Dark',
          id: 'Dark',
        ),
        QTheme(
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.yellow,
          ),
          name: 'Yellow',
          id: 'Yellow',
        ),
        QTheme(
          theme: ThemeData.light(),
          name: 'Light',
          id: 'Light',
        ),
        QTheme(
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.red,
          ),
          name: 'Red',
          id: 'Red',
        ),
        QTheme(
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.cyan,
          ),
          name: 'cyan',
          id: 'cyan',
        ),
      ];
}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QueenBuilder(
      builder: (ctx) => MaterialApp(
        theme: AppTheme.current,
        home: Scaffold(
          body: Center(
            child: Text(AppTheme.index.toString()),
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
      'queen.theme.index': 2,
    });
    await App.boot(
      themeConfig: TestConfig(),
    );
  });

  tearDown(() async {
    await App.dispose();
  });
  test(
    'it saves the theme to shared preferences',
    () async {
      await AppTheme.next();
      expect(Prefs.getInt('queen.theme.index'), 3);
    },
  );
  testWidgets(
    'it loads last selected theme when it boots',
    (WidgetTester tester) async {
      /// * pump the app
      await tester.pumpWidget(const TestApp());

      final counterZero = find.text('2');
      expect(counterZero, findsOneWidget);
    },
  );
}
