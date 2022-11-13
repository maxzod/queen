import 'package:flutter/material.dart';
import 'package:flutter_readable/src/context/theme.dart';

extension RContextTextTheme on BuildContext {
  /// shortcut for `Theme.of(context).textTheme.bodyText1`
  TextStyle? get bodyText1 => textTheme.bodyText1;

  /// shortcut for `Theme.of(context).textTheme.bodyText2`
  TextStyle? get bodyText2 => textTheme.bodyText2;

  /// shortcut for `Theme.of(context).textTheme.button`
  TextStyle? get button => textTheme.button;

  /// shortcut for `Theme.of(context).textTheme.caption`
  TextStyle? get caption => textTheme.caption;

  /// shortcut for `Theme.of(context)..textTheme.headline1`
  TextStyle? get headline1 => textTheme.headline1;

  /// shortcut for `Theme.of(context)..textTheme.headline1`
  TextStyle? get h1 => textTheme.headline1;

  /// shortcut for `Theme.of(context).textTheme.headline2`
  TextStyle? get headline2 => textTheme.headline2;

  /// shortcut for `Theme.of(context).textTheme.headline2`
  TextStyle? get h2 => textTheme.headline2;

  /// shortcut for `Theme.of(context).textTheme.headline3`
  TextStyle? get headline3 => textTheme.headline3;

  /// shortcut for `Theme.of(context).textTheme.headline3`
  TextStyle? get h3 => textTheme.headline3;

  /// shortcut for `Theme.of(context).textTheme.headline4`
  TextStyle? get headline4 => textTheme.headline4;

  /// shortcut for `Theme.of(context).textTheme.headline4`
  TextStyle? get h4 => textTheme.headline4;

  /// shortcut for `Theme.of(context).textTheme.headline5`
  TextStyle? get headline5 => textTheme.headline5;

  /// shortcut for `Theme.of(context).textTheme.headline5`
  TextStyle? get h5 => textTheme.headline5;

  /// shortcut for `Theme.of(context).textTheme.headline6`
  TextStyle? get headline6 => textTheme.headline6;

  /// shortcut for `Theme.of(context).textTheme.headline6`
  TextStyle? get h6 => textTheme.headline6;

  /// shortcut for `Theme.of(context).textTheme.overline`
  TextStyle? get overline => textTheme.overline;

  /// shortcut for `Theme.of(context).textTheme.subtitle1`
  TextStyle? get subtitle1 => textTheme.subtitle1;

  /// shortcut for `Theme.of(context).textTheme.subtitle2`
  TextStyle? get subtitle2 => textTheme.subtitle2;
}
