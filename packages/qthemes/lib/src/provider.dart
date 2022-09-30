import 'package:qcore/qcore.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../qthemes.dart';

final themesProvider = ChangeNotifierProvider<ThemeController>(
  (_) => throw LauncherIsNotReady(ThemeController),
);
