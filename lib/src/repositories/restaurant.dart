import 'package:custom1/src/helpers/constants.dart';
import 'package:custom1/src/models/restaurant.dart';

abstract class RestaurantBase {
  Future<Restaurant> getRestaurants();
  Future<Restaurant> getRestaurantsById(int id);
}

class RestaurantRepository with RestaurantBase {
  @override
  Future<Restaurant> getRestaurants() async {
   try {
       var response = await client.get('$endpoint/search?order=asc&count=16', headers: {'user-key': apiKey, 'Accept': 'application/json'});
    return restaurantFromJson(response.body);
     } catch (e) {
       print(e);
       return {} as Restaurant;
     }
  }
  @override
  Future<Restaurant> getRestaurantsById(int id) async {
   try {
       var response = await client.get('$endpoint/search?entity_id=$id&entity_type=city&count=15&order=asc', headers: {'user-key': apiKey, 'Accept': 'application/json'});
    return restaurantFromJson(response.body);
     } catch (e) {
       print(e);
       return getRestaurants();
     }
  }
  Future<Restaurant> getRestaurantsByLocation(double lat, double lng) async {
   try {
       var response = await client.get('$endpoint/search?&count=16&lat=$lat&lon=$lng&order=asc', headers: {'user-key': apiKey, 'Accept': 'application/json'});
    return restaurantFromJson(response.body);
     } catch (e) {
       print(e);
       return getRestaurants();
     }
  }
}
