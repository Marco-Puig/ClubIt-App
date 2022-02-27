import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class CurrentUser extends ChangeNotifier {
  late String _uid;
  late String _email;
  late String _pass;

  String get getUid => _uid;

  String get getEmail => _email;

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> signUpUser(String email, String password) async {
    bool retVal = false;

    try {
      UserCredential _authResult = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      if (_authResult.user != null) {
        retVal = true;
      }
    } catch (e) {
      print(e);
    }

    return retVal;
  }

  Future<bool> loginUser(String email, String password) async {
    bool retVal = false;

    try {
      UserCredential _authResult = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      if (_authResult.user != null) {
        _email = email;
        _pass = password;
        retVal = true;
      }
    } catch (e) {
      print(e);
    }

    return retVal;
  }
}
