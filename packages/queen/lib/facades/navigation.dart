import 'package:flutter/cupertino.dart';

class NavigatorBase {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<void> reset() async {
    navigatorKey = GlobalKey<NavigatorState>();
  }

  Future<void> to(Widget page) async {
    await navigatorKey.currentState?.push(
      CupertinoPageRoute(builder: (_) => page),
    );
  }
}
