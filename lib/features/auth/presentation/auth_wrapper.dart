import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login_screen.dart';
// import dashboard screen later

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),

      builder: (context, snapshot) {
        // Waiting for Firebase response
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        // User logged in
        if (snapshot.hasData) {
          // Dashboard will come here later
          return const Scaffold(
            body: Center(child: Text("Welcome to Nexora 🚀")),
          );
        }

        // User not logged in
        return const LoginScreen();
      },
    );
  }
}
