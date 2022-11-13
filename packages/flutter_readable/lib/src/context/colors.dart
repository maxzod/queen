import 'package:flutter/material.dart';

extension RContextColors on BuildContext {
  /// shortcut for `Theme.of(context).primaryColor`
  Color get primaryColor => Theme.of(this).primaryColor;

  /// shortcut for `Theme.of(context).primaryColorDark`
  Color get primaryColorDark => Theme.of(this).primaryColorDark;

  /// shortcut for `Theme.of(context).primaryColorLight`
  Color get primaryColorLight => Theme.of(this).primaryColorLight;

  /// shortcut for `Theme.of(context).backgroundColor`
  Color get backgroundColor => Theme.of(this).backgroundColor;

  /// shortcut for `Theme.of(context).scaffoldBackgroundColor`
  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;

  /// shortcut for `Theme.of(context).bottomAppBarColor`
  Color get bottomAppBarColor => Theme.of(this).bottomAppBarColor;

  /// shortcut for `Theme.of(context).cardColor`
  Color get cardColor => Theme.of(this).cardColor;

  /// shortcut for `Theme.of(context).dividerColor`
  Color get dividerColor => Theme.of(this).dividerColor;

  /// shortcut for `Theme.of(context).disabledColor`
  Color get disabledColor => Theme.of(this).disabledColor;

  /// shortcut for `Theme.of(context).focusColor`
  Color get focusColor => Theme.of(this).focusColor;

  /// shortcut for `Theme.of(context).hoverColor`
  Color get hoverColor => Theme.of(this).hoverColor;

  /// shortcut for `Theme.of(context).highlightColor`
  Color get highlightColor => Theme.of(this).highlightColor;

  /// shortcut for `Theme.of(context).splashColor`
  Color get splashColor => Theme.of(this).splashColor;

  /// shortcut for `Theme.of(context).selectedRowColor`
  Color get selectedRowColor => Theme.of(this).selectedRowColor;

  /// shortcut for `Theme.of(context).unselectedWidgetColor`
  Color get unselectedWidgetColor => Theme.of(this).unselectedWidgetColor;

  /// shortcut for `Theme.of(context).secondaryHeaderColor`
  Color get secondaryHeaderColor => Theme.of(this).secondaryHeaderColor;

  /// shortcut for `Theme.of(context).toggleableActiveColor`
  Color get toggleableActiveColor => Theme.of(this).toggleableActiveColor;

  /// shortcut for `Theme.of(context).hintColor`

  Color get hintColor => Theme.of(this).hintColor;

  /// shortcut for `Theme.of(context).errorColor`

  Color get errorColor => Theme.of(this).errorColor;

  /// shortcut for `Theme.of(context).colorScheme`

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /// shortcut for `Theme.of(context).colorScheme.secondary`

  Color get secondary => colorScheme.secondary;

  /// shortcut for `Theme.of(context).colorScheme.primary`

  Color get buttonPrimaryColor => colorScheme.primary;
}
