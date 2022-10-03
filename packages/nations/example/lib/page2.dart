import 'package:flutter/material.dart';
import 'package:nations/nations.dart';

void _updateLocale(BuildContext context) {
  AppLang.update(
    Locale(
      AppLang.current.languageCode == 'ar' ? 'en' : 'ar',
    ),
  );
}

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page  2 😀'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              title: const Text('check me !'),
              value: isChecked,
              onChanged: (v) {
                setState(() {
                  isChecked = v!;
                });
              },
            ),

            Text(AppLang.current.toString()),

            /// * gender
            Text('gender'.trMale),
            Text('gender'.trFemale),

            /// *
            Text('gender'.gender),
            Text('welcome : ${'person'.gender}'),
            Text('Un_Known_Key_With_Gender'.trMale),

            /// *
            Text('validation.email'.tr),
            Text('${'validation.age.to_young'.tr}    55'),
            Text('validation.age.old_enough'.tr),
            Text('validation.age.very_old'.tr),
            Text('person'.trMale),
            Text('person'.trFemale),
            Text('person'.gender),
            Text('person.male'.tr),
            Text('validation.age.to_young'.tr),
            Text('attributedMessage'.args({'atr1': "foo", 'atr2': 'bar'})),

            Text('123456789'.toLocale()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _updateLocale(context),
        child: const Icon(Icons.translate),
      ),
    );
  }
}
