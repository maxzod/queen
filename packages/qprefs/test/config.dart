import 'package:qcore/qcore.dart';
import 'package:qprefs/qprefs.dart';

class TestAppConfig extends AppConfig {
  @override
  List<Launcher> get launchers => [
        PrefsLauncher(),
      ];
}
