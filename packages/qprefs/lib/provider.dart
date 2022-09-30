import 'package:qcore/qcore.dart';
import 'package:qprefs/launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPrefsProvider = Provider<SharedPreferences>(
  (_) => throw LauncherIsNotReady(PrefsLauncher),
);
