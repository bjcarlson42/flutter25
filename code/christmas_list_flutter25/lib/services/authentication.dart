import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseAuth {
  Future<User> getCurrentUser();
  Future<void> signOut();
}

class Auth implements BaseAuth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<User> getCurrentUser() async {
    User userCredential = _firebaseAuth.currentUser;
    return userCredential;
  }

  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }
}