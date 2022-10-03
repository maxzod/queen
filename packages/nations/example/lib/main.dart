import 'package:example/config/lang.dart';
import 'package:example/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nations/nations.dart';
import 'package:qcore/qcore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await bootLaunchers([
    PrefsLauncher(),
    LangLauncher(AppLangConfig()),
  ]);
  runApp(
    LangBuilder(
      builder: (ctx) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // TODO :: (3) pass these parameters
      locale: AppLang.current,
      // localizationsDelegates: Nations.delegates,
      supportedLocales: AppLang.supportedLocales,
      builder: (context, child) => child!,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      /// end ot Nations params
      home: const MySc(),
    );
  }
}

class MySc extends StatelessWidget {
  const MySc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void updateLocale() {
      //  TODO ::(5) update the locale
      // Nations.updateLocale(Locale(
      //   Nations.locale.languageCode == 'ar' ? 'en' : 'ar',
      // ));
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const PageTwo(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('امم  Nations')),
      body: const Center(
        child: Text('Go To Page 2'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: updateLocale,
        child: const Icon(Icons.translate),
      ),
    );
  }
}
