import 'package:url_launcher/url_launcher.dart';

abstract class Launch {
  static Future url(String url) async {
    await launch(url);
  }

  static Future phone(String phone) async {
    await launch('tel:+966 $phone');
  }

  static Future sms(String phone) async {
    await launch('sms:+966 $phone');
  }

  static Future<void> onWhatsApp(String phone, {String? message}) async {
    if (message != null) {
      // todo :: attach message to the url

      throw UnimplementedError();
    } else {
      await launch('whatsapp://send?phone=$phone');
    }
  }

  static Future<void> onTelegram(String userName, {String? message}) async {
    throw UnimplementedError();
    // if (message != null) {
    // } else {}
  }

  static Future<void> googleMapsDirections(String lat, String long) async {
    await launch('google.navigation:q=$lat,$long');
  }

  static Future<void> inGoogleMaps(String lat, String long) async =>
      throw UnimplementedError();
}
