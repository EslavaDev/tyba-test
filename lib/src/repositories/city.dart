import 'package:custom1/src/helpers/constants.dart';
import 'package:custom1/src/models/city.dart';

abstract class CityBase {
  Future<List<LocationSuggestion>> getCities();
}

class CityRepository with CityBase {
  @override
  Future<List<LocationSuggestion>> getCities() async {
     try {
       var response = await client.get('$endpoint/cities', headers: {'user-key': apiKey, 'Accept': 'application/json'});
    return cityFromJson(response.body).locationSuggestions;
     } catch (e) {
       print(e);
      return [];
     }
  }
  
  Future<List<LocationSuggestion>> getCitiesByName(String name) async {
     try {
       var response = await client.get('$endpoint/cities?q=$name', headers: {'user-key': apiKey, 'Accept': 'application/json'});
    return cityFromJson(response.body).locationSuggestions;
     } catch (e) {
       print(e);
      return [];
     }
  }
}
