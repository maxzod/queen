import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:qcore/qcore.dart';
import 'package:qprefs/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsLauncher extends Launcher {
  @protected
  Override? prefsOverride;

  @override
  Future<void> boot() async {
    prefsOverride = sharedPrefsProvider.overrideWithValue(
      await SharedPreferences.getInstance(),
    );
  }

  @override
  List<Override> overrides() {
    return [
      if (prefsOverride != null) prefsOverride!,
    ];
  }
}
