import 'package:flutter_test/flutter_test.dart';
import 'package:qthemes/qthemes.dart';
import 'package:queen/queen.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() async {
    await App.boot();
  });
  tearDown(() async {
    await App.dispose();
  });
  test(
    'updateByIndexOrThrow throws if index is out of range',
    () {
      expect(
        () => AppTheme.updateByIndexOrThrow(9990),
        throwsA(isA<RangeError>()),
      );
    },
  );
  test(
    'updateByIndex does not throws if index is out of range',
    () async {
      await AppTheme.updateByIndex(999);
      expect(true, isTrue);
    },
  );
}
