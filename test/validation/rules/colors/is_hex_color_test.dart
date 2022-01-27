import 'package:flutter_test/flutter_test.dart';
import 'package:queen/validation.dart';

void main() {
  test('return true if is valid color', () {
    const rule = IsHexColor();
    expect(rule.isValid('#FFFFFF'), isTrue);
    expect(rule.isValid('#FFF'), isTrue);
    expect(rule.isValid('FFF'), isTrue);
    expect(rule.isValid('FFFFFF'), isTrue);
    expect(rule.isValid('FFFFFFFF'), isTrue);
  });
  test('return false if is valid color', () {
    const rule = IsHexColor();
    expect(rule.isValid(''), isFalse);
  });
}
