import 'package:flutter_test/flutter_test.dart';
import 'package:nations/nations.dart';

void main() {
  test('it return empty map if the locale is not supported', () {
    final assets = const NationsAssetsLoader().load(const Locale('foo'));
    expect(assets, isEmpty);
  });
  // TODO :: needs mock
  // test('it can load supported locales', () {
  //   const loader = NationsAssetsLoader();
  //   expect(loader.load(const Locale('ar')), isNotEmpty);
  //   expect(loader.load(const Locale('en')), isNotEmpty);
  //   expect(loader.load(const Locale('es')), isNotEmpty);
  // });
}
