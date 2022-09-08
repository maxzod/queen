import 'package:locators/locators.dart';
import 'package:qcore/qcore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsLauncher extends Launcher {
  @override
  Future<void> boot() async {
    // TODO :: (locators) add putAsyncIfAbsens
    Locators.put<SharedPreferences>(
      await SharedPreferences.getInstance(),
    );
  }
}
