import 'dart:async';
import 'package:flutter/material.dart';
import '../../onboarding/presentation/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Wait for 3 seconds before moving to the next screen
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Temporary Logo
            const Icon(Icons.auto_awesome, size: 100, color: Color(0xFF4F46E5)),

            const SizedBox(height: 25),

            const Text(
              "NEXORA",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Color(0xFF0F172A),
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              "The Operating System\nfor Ambitious Minds.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey, height: 1.5),
            ),

            const SizedBox(height: 50),

            const CircularProgressIndicator(color: Color(0xFF4F46E5)),
          ],
        ),
      ),
    );
  }
}
