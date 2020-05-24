import 'package:custom1/src/models/user.dart';
import 'package:custom1/src/repositories/auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  final AuthRepository _repository = AuthRepository();
  SharedPreferences _prefs;
  bool _loggedIn = false;
  bool _loading = true;
  User _user;

  bool get isLoggedIn => _loggedIn;
  bool get loading => _loading;

  void signIn(String email, String password) async {
    _loading = true;
    notifyListeners();
    try {
      _user = await _repository.login(email, password);

      await _prefs.setBool('isLoggedIn', true);
      _loggedIn = true;
    } catch (e) {
      _loggedIn = false;
      rethrow;
    }
    _loading = false;
    notifyListeners();
  }

  void signUp(String email, String password) async {
    _loading = true;
    notifyListeners();
    try {
      _user = await _repository.signUp(email, password);

      await _prefs.setBool('isLoggedIn', true);
      _loggedIn = true;
      notifyListeners();
    } catch (e) {
      _loggedIn = false;
      notifyListeners();
      rethrow;
    }
    _loading = false;
    notifyListeners();
  }

  void logout() {
    _prefs.clear();
    _repository.signOut();
    _loggedIn = false;
    notifyListeners();
  }

  void loginState() async {
    _prefs = await SharedPreferences.getInstance();
    print('entre');
    if (_prefs.containsKey('isLoggedIn')) {
      _user = await _repository.currentUser();
      print('_user');
      _loggedIn = _user != null;
      _loading = false;
      notifyListeners();
    } else {
      _loading = false;
      notifyListeners();
    }
  }
}
