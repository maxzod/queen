import 'package:flutter_test/flutter_test.dart';
import 'package:queen/queen.dart';
import 'package:queen/translations/loaders/nation_assets.dart';
// import 'package:queen/validation/urls/is_youtube_url.dart';

class _TransTestConfig extends NationsConfig {
  @override
  List<NationsLoader> get loaders => const [
        NationsAssetsLoader(),
      ];
}

Future<void> main() async {
  await App.boot(
    nationsConfig: _TransTestConfig(),
  );

  tearDownAll(() async {
    await Locators.reset();
  });
  // final rules = [
  //   const IsHexColor(),
  //   IsYoutubeUrl(),
  // ];
  // TODO :: add the validation localization assets to nations_assets
  // for (final rule in rules) {
  // test(
  //   'rule ${rule.runtimeType} has a localization error',
  //   () => expect(
  //     rule.localizedError == 'null',
  //     isFalse,
  //     reason: 'rule ${rule.runtimeType} has a localization message',
  //   ),
  // );
  // }
}
