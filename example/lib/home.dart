import 'package:flutter/material.dart';
import 'package:queen/queen.dart';
import 'package:queen_themes_example/lang.dart';
import 'package:queen_themes_example/validation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('Localization '),
              onTap: () {
                /// go to language page
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const LangPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Validation'),
              onTap: () {
                /// go to language page
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => ValidationPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
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
    );
  }
}
