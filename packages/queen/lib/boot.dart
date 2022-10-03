import 'package:queen/queen.dart';

///
Future<void> runQueen({
  required BaseAppConfig config,
}) async {
  await bootLaunchers(config.launchers);
}
