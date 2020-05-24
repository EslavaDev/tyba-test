
import 'package:custom1/src/models/city.dart';
import 'package:custom1/src/repositories/city.dart';
import 'package:flutter/material.dart';

class CityProvider with ChangeNotifier{
  final CityRepository _repository = CityRepository();
  List<LocationSuggestion> _cities;
  bool _loading = true;

  List<LocationSuggestion> get cities => _cities;
  bool get loading => _loading;


  void getCities() async {
    _loading = true;
    notifyListeners();
    _cities = await _repository.getCities();
    _loading = false; 
    notifyListeners();
  }
  void getCitiesByName(String name, Function callback) async {
    _loading = true;
    notifyListeners();
    var response = await _repository.getCitiesByName(name);
    if(response.isNotEmpty){
    _cities = response;
    callback(response[0].id);
    }
    _loading = false; 
    notifyListeners();
  }

}