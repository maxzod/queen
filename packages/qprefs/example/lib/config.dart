import 'package:qcore/qcore.dart';
import 'package:qprefs/qprefs.dart';

class ExampleAppConfig extends AppConfig {
  @override
  List<Launcher> get launchers => [
        PrefsLauncher(),
      ];
}
