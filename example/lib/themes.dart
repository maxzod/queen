import 'package:flutter/material.dart';
import 'package:queen/queen.dart';
import 'package:queen/themes.dart';

void main() {
  QTheme.boot(AppThemesConfig());
  runApp(const MyApp());
}

class AppThemesConfig extends QThemeConfig {
  @override
  List<ThemeData> get themes => [
        ThemeData.dark(),
        ThemeData(
          scaffoldBackgroundColor: Colors.yellow,
        ),
        ThemeData.light(),
        ThemeData(
          scaffoldBackgroundColor: Colors.red,
        ),
      ];
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return QueenBuilder(
      builder: (ctx) => MaterialApp(
        theme: QTheme.current,
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () => QTheme.next(),
            child: const Icon(Icons.add),
          ),
          body: Center(
            child: Text(
              QTheme.currentIndex.toString(),
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          appBar: AppBar(
            title: const Text('👑 Queen Themes'),
          ),
        ),
      ),
    );
  }
}
