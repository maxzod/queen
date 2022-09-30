import 'package:qcore/qcore.dart';
import 'package:qprefs/launcher.dart';
import 'package:qthemes/qthemes.dart';
import 'package:qthemes_example/config/theme.dart';

class ExampleAppConfig extends AppConfig {
  @override
  List<Launcher> get launchers => [
        PrefsLauncher(),
        QThemeLauncher(
          AppThemeConfig(),
        ),
      ];
}
