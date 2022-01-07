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
        onPressed: () => Queen.nextTheme(),
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              Queen.currentIndex.toString(),
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              colorToString(Colors.green),
              style: context.headline1,
            ),
            Container(
              color: Colors.red,
              child: Text(
                (Color(int.parse('0xff4caf50')) == Colors.green).toString(),
                style: context.headline1,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('👑 Queen Themes'),
      ),
    );
  }
}

String colorToString(Color color) {
  return color.value.toRadixString(16);
  // .padLeft(8, '0');
}

Color colorFromString(String color) {
  return Color(int.parse(color));
}
