import 'package:flutter_dotenv/flutter_dotenv.dart';

final googleMapsApiKey = dotenv.env['GOOGLE_MAPS_API_KEY'];

class LocationUtil {
  static String generateLocationPreviewImage({
    double? latitude,
    double? longitude,
  }) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=13&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%$latitude,$longitude&key=$googleMapsApiKey';
  }
}
