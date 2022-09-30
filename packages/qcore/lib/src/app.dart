import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ignore: non_constant_identifier_names
final App = AppInterface();

class AppInterface {
  GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  BuildContext get context => _navigatorKey.currentContext!;

  void setNavigatorKey(GlobalKey<NavigatorState> key) {
    _navigatorKey = key;
    log('{Q} navigator key changed !');
  }

  ProviderContainer get container =>
      ProviderScope.containerOf(context, listen: false);
}
