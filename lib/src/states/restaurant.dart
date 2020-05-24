import 'package:custom1/src/models/restaurant.dart';
import 'package:custom1/src/repositories/location.dart';
import 'package:custom1/src/repositories/restaurant.dart';
import 'package:flutter/material.dart';

class RestaurantProvider with ChangeNotifier{
  final RestaurantRepository _repository = RestaurantRepository();
  final LocationService _location = LocationService();
  List<RestaurantElement> _restaurants;
  bool _loading = true;

  List<RestaurantElement> get restaurants => _restaurants;
  bool get loading => _loading;


  void getRestaurants() async {
    _loading = true;
    notifyListeners();
    var response = await _repository.getRestaurants();
    _restaurants = response.restaurants;
    _loading = false; 
    notifyListeners();
  }
  void getRestaurantsById(int id) async {
    _loading = true;
    notifyListeners();
    var response = await _repository.getRestaurantsById(id);
    if(response.restaurants.isNotEmpty){
    _restaurants = response.restaurants;
    }
    _loading = false; 
    notifyListeners();
  }

  void getRestaurantsByLocation() async {
    _loading = true;
    notifyListeners();
    var location = await _location.getLocation();
    print(location.latitude.toString());
    var response = await _repository.getRestaurantsByLocation(location.latitude, location.longitude);
     if(response.restaurants.isNotEmpty){
    _restaurants = response.restaurants;
    }
    _loading = false; 
    notifyListeners();
  }

}