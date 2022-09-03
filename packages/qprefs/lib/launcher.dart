import 'package:locators/locators.dart';
import 'package:qcore/qcore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsLauncher extends Launcher {
  @override
  void register() {
    // TODO :: add putAsyncIfAbsent to Locators package
    SharedPreferences.getInstance().then(
      (p) => Locators.put<SharedPreferences>(p),
    );
  }

  @override
  void boot() {}
}
