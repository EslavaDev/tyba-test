import 'package:custom1/src/models/location.dart';
import 'package:geolocator/geolocator.dart';

class LocationService {
  UserLocation _currentLocation;

   Geolocator position = Geolocator();

  Future<UserLocation> getLocation() async {
    try {
      print('entre 2');
      var userLocation = await position.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      print(userLocation.latitude.toString());
      _currentLocation = UserLocation(
        latitude: userLocation.latitude,
        longitude: userLocation.longitude,
      );
    } on Exception catch (e) {
      print('Could not get location: ${e.toString()}');
    }

    return _currentLocation;
  }
}