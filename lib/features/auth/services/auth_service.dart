import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // Get current logged in user
  User? get currentUser => _firebaseAuth.currentUser;

  // Sign Up
  Future<User?> signUp(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }

  // Login
  Future<User?> login(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }

  // Logout
  Future<void> logout() async {
    try {
      await _firebaseAuth.signOut();
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }
}
