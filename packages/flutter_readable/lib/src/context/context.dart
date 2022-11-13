import 'package:flutter/material.dart';

extension RContext on BuildContext {
  /// shortcut for `Overlay.of(context)``
  OverlayState? get overlay => Overlay.of(this);

  /// shortcut for `Scaffold.of(context)`
  ScaffoldState get scaffold => Scaffold.of(this);

  /// shortcut for `Scaffold.maybeOf(context)`
  ScaffoldState? get scaffoldMaybeOf => Scaffold.maybeOf(this);

  /// shortcut for `ScaffoldMessenger.of(context)``
  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);
}
