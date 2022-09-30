import 'package:url_launcher/url_launcher.dart';

/// TODO ::  SHOULD BE IN other PACKAGE
abstract class Launch {
  static Future<bool> url(
    String url,
  ) =>
      launchUrl(Uri.parse(url));

  static Future<bool> phone(
    String phone,
  ) =>
      launchUrl(Uri.parse('tel:$phone'));

  static Future<bool> sms(
    String phone,
  ) =>
      launchUrl(Uri.parse('sms:$phone'));

  static Future<bool> onWhatsApp(String phone, {String? message}) {
    if (message != null) {
      // todo :: attach message to the url

      throw UnimplementedError();
    } else {
      return launchUrl(Uri.parse('whatsapp://send?phone=$phone'));
    }
  }

  static Future<void> onTelegram(
    String userName, {
    String? message,
  }) =>
      throw UnimplementedError();

  static Future<void> googleMapsDirections({
    required String lat,
    required String long,
  }) =>
      throw UnimplementedError();

  static Future<void> inGoogleMaps({
    required String lat,
    required String long,
  }) =>
      throw UnimplementedError();
}
