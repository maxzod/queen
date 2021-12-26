import 'package:flutter/material.dart';
import 'package:queen/queen.dart';

class LangPage extends StatelessWidget {
  const LangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Languages'),
      ),
      body: Center(
        child: Column(
          children: [
            // SizedBox(
            // width: context.width * 0.5,
            // height: context.height * 0.5,
            // ),
            Text(Nations.locale.toString()),
            Text('gender'.trMale),
            Text('gender'.trFemale),
            Text('gender'.gender),
          ],
        ),
      ),

      /// floating action button to update the locale
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /// update the locale
          Nations.updateLocale(
            Locale(
              Nations.locale.languageCode == 'ar' ? 'en' : 'ar',
            ),
          );
        },
        child: const Icon(Icons.language),
      ),
    );
  }
}
