import 'package:flutter/material.dart';
import 'package:queen/queen.dart';

extension on bool {
  bool get toggle => !this;
}

class DebugBar extends StatefulWidget {
  const DebugBar({Key? key}) : super(key: key);

  @override
  State<DebugBar> createState() => _DebugBarState();
}

class _DebugBarState extends State<DebugBar> {
  //  readable bool => toggle
  bool _isOpen = false;
  @override
  Widget build(BuildContext context) {
    // TODO :: show current and next
    // TODO ::: Nations.whatIsNext() => Locale
    final _currentLangIndex = Nations.supportedLocales.indexOf(Nations.locale);
    final _isLastLang =
        _currentLangIndex == Nations.supportedLocales.length - 1;
    final nextLang =
        Nations.supportedLocales[_isLastLang ? 0 : _currentLangIndex + 1];
    // TODO ::: Queen.whatIsNextTheme()

    final _isLastIndex = Queen.currentIndex == Queen.config.themes.length - 1;
    final nextTheme =
        Queen.config.themes[_isLastIndex ? 0 : Queen.currentIndex + 1];
    final _topRow = Row(
      children: <Widget>[
        IconButton(
          onPressed: () {
            setState(() {
              _isOpen = _isOpen.toggle;
            });
          },
          icon: Icon(
            _isOpen ? Icons.arrow_upward : Icons.arrow_downward,
          ),
        ),
        DebugButton(
          onPressed: Queen.nextTheme,
          title: '🎨 ${nextTheme.name}',
        ),
        DebugButton(
          onPressed: () => Nations.updateLocale(nextLang),
          title: '🌎 $nextLang',
        ),
      ],
    );
    final _bottomRow = Row(
      children: <Widget>[
        DropdownButton<Locale>(
          value: Nations.locale,
          elevation: 16,
          onChanged: (Locale? newValue) {
            if (newValue != null) Nations.updateLocale(newValue);
          },
          items: Nations.supportedLocales.map<DropdownMenuItem<Locale>>(
            (Locale value) {
              return DropdownMenuItem<Locale>(
                value: value,
                child: Text(value.toString()),
              );
            },
          ).toList(),
        ),
        DropdownButton<QTheme>(
          value: Queen.currentQTheme,
          elevation: 16,
          onChanged: (QTheme? newValue) {
            if (newValue != null) Queen.updateTo(newValue);
          },
          items: Queen.config.themes
              .map<DropdownMenuItem<QTheme>>(
                (QTheme value) => DropdownMenuItem<QTheme>(
                  value: value,
                  child: Text(value.name),
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
