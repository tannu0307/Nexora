import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/auth_service.dart';

/// Auth Service
final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService();
});

/// Firebase Auth State Stream
final authStateProvider = StreamProvider<User?>((ref) {
  return FirebaseAuth.instance.authStateChanges();
});

/// Auth Notifier
final authProvider = StateNotifierProvider<AuthNotifier, User?>((ref) {
  return AuthNotifier(ref.read(authServiceProvider));
});

class AuthNotifier extends StateNotifier<User?> {
  final AuthService _authService;

  AuthNotifier(this._authService) : super(_authService.currentUser);

  /// Sign Up
  Future<void> signUp({required String email, required String password}) async {
    state = await _authService.signUp(email: email, password: password);
  }

  /// Login
  Future<void> login({required String email, required String password}) async {
    state = await _authService.login(email: email, password: password);
  }

  /// Logout
  Future<void> logout() async {
    await _authService.logout();
    state = null;
  }
}
