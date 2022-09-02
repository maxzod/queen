import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:queen/queen.dart' hide find;
import 'package:qthemes/qthemes.dart';

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
    await (await SharedPreferences.getInstance()).clear();
    await App.boot();
  });
  testWidgets(
    'it rebuilds after theme Changes',
    (WidgetTester tester) async {
      /// * pump the app
      await tester.pumpWidget(const TestApp());

      final counterZero = find.text('0');
      expect(counterZero, findsOneWidget);

      await AppTheme.next();
      await tester.pumpAndSettle();

      final counterOne = find.text('1');
      expect(counterOne, findsOneWidget);
    },
  );
  // testWidgets(
  //   'it returns Range error after index out of range',
  //   (WidgetTester tester) async {
  //     /// * pump the app
  //     await tester.pumpWidget(const TestApp());

  //     final counterZero = find.text('0');
  //     expect(counterZero, findsOneWidget);

  //     await QTheme.updateTo(5);
  //     await tester.pumpAndSettle();

  //     final newcounterZero = find.text('0');
  //     expect(newcounterZero, findsOneWidget);
  //   },
  // );
  // testWidgets(
  //   'it can loop between themes for ever',
  //   (WidgetTester tester) async {
  //     /// * pump the app
  //     await tester.pumpWidget(const TestApp());

  //     final counterZero = find.text('0');
  //     expect(counterZero, findsOneWidget);

  //     await QTheme.next();
  //     await tester.pumpAndSettle();

  //     final counterOne = find.text('1');
  //     expect(counterOne, findsOneWidget);
  //     await QTheme.next();
  //     await tester.pumpAndSettle();

  //     final counterZero2 = find.text('0');
  //     expect(counterZero2, findsOneWidget);

  //     await QTheme.next();
  //     await tester.pumpAndSettle();

  //     final counterOne2 = find.text('1');
  //     expect(counterOne2, findsOneWidget);
  //   },
  // );
}
