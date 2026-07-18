import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../services/auth_service.dart';

final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService();
});

final authProvider = StateNotifierProvider<AuthNotifier, User?>((ref) {
  return AuthNotifier(ref.read(authServiceProvider));
});

class AuthNotifier extends StateNotifier<User?> {
  final AuthService _authService;

  AuthNotifier(this._authService) : super(_authService.currentUser);

  Future<void> signUp(String email, String password) async {
    state = await _authService.signUp(email, password);
  }

  Future<void> login(String email, String password) async {
    state = await _authService.login(email, password);
  }

  Future<void> logout() async {
    await _authService.logout();

    state = null;
  }
}
