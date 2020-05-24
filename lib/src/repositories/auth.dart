import 'package:custom1/src/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  Future signUp(String email, String password);
  Future login(String email, String password);
  Future signOut();
}

class AuthRepository with AuthBase {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  

  User _userFromFirebaseUser({FirebaseUser user}) {
    return user != null ? User(uid: user.uid) : null;
  }

  @override
  Future login(String email, String password) async {
    try {
      var result =
          await _auth.signInWithEmailAndPassword(email: email, password: password);
      var user = result.user;
      return _userFromFirebaseUser(user: user);
    } catch (error) {
      print(error.toString());
      rethrow;
    }
  }

  @override
  Future signOut() async {
    try {
      await _auth.signOut();
      return _userFromFirebaseUser();
    } catch (error) {
      print(error.toString());
      rethrow ;
    }
  }

  @override
  Future signUp(String email, String password) async {
    try {
      var result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      var user = result.user;
      return _userFromFirebaseUser(user: user);
    } catch (error) {
      print(error.toString());
      rethrow ;
    }
  }
  Future currentUser() async {
    try {
      var result = await _auth.currentUser();
      return _userFromFirebaseUser(user: result);
    } catch (error) {
      print(error.toString());
      rethrow;
    }
  }
}
