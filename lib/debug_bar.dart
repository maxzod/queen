library debug_bar;

import 'package:flutter/material.dart';
import 'package:queen/queen.dart';

class _QueenBrandColors {
  _QueenBrandColors._();

  static const darkMain = Color(0xFF000216);
  static const red = Color(0xFFff3a3c);
}

final kQueenTheme = ThemeData.dark().copyWith(
  // primaryColor: _QueenBrandColors.darkMain,
  colorScheme: const ColorScheme.dark(
    primary: _QueenBrandColors.darkMain,
    background: _QueenBrandColors.red,
    secondary: _QueenBrandColors.red,
  ),
  textTheme: const TextTheme(
    button: TextStyle(
      color: Colors.white,
    ),
  ),
);

class DebugBar extends StatefulWidget {
  const DebugBar({Key? key}) : super(key: key);

  @override
  State<DebugBar> createState() => _DebugBarState();
}

class _DebugBarState extends State<DebugBar> {
  bool _isOpen = false;
  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Locators.find();
    final TransController transController = Locators.find();
    // TODO :: show current and next
    // TODO ::: Nations.whatIsNext() => Locale
    final _currentLangIndex =
        transController.supportedLocales.indexOf(transController.locale);
    final _isLastLang =
        _currentLangIndex == transController.supportedLocales.length - 1;
    final nextLang = transController
        .supportedLocales[_isLastLang ? 0 : _currentLangIndex + 1];
    // TODO ::: Queen.whatIsNextTheme()

    final _isLastIndex = themeController.currentIndex ==
        themeController.config.themes.length - 1;
    final nextTheme = themeController
        .config.themes[_isLastIndex ? 0 : themeController.currentIndex + 1];
    final _topRow = Row(
      children: <Widget>[
        IconButton(
          onPressed: () {
            setState(() {
              _isOpen = _isOpen.toggle();
            });
          },
          icon: Icon(
            _isOpen ? Icons.arrow_upward : Icons.arrow_downward,
          ),
        ),
        DebugButton(
          onPressed: themeController.nextTheme,
          title: '🎨 ${nextTheme.name}',
        ),
        DebugButton(
          onPressed: () => transController.updateLocale(nextLang),
          title: '🌎 $nextLang',
        ),
      ],
    );

    final _bottomRow = Column(
      children: <Widget>[
        Row(
          children: transController.supportedLocales
              .map(
                (e) => Expanded(
                  child: RadioListTile<Locale>(
                    title: Text(e.toString()),
                    value: e,
                    groupValue: transController.locale,
                    onChanged: (newValue) {
                      if (newValue != null) {
                        transController.updateLocale(newValue);
                      }
                    },
                  ),
                ),
              )
              .toList(),
        ),
        Row(
          children: AppTheme.supportedThemes
              .map(
                (e) => Expanded(
                  child: RadioListTile<QTheme>(
                    title: Text(e.name),
                    value: e,
                    groupValue: AppTheme.qTheme,
                    onChanged: (newValue) {
                      if (newValue != null) AppTheme.updateTo(newValue);
                    },
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );

    return Material(
      // color: const Color(0xFF000216),
      child: Center(
        child: _isOpen
            ? Column(
                children: [
                  _topRow,
                  _bottomRow,
                ],
              )
            : _topRow,
      ),
    );
  }
}

class DebugButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const DebugButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: context.headline6,
      ),
    );
  }
}
