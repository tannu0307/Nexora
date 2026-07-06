import 'package:flutter/material.dart';
import '../presentation/onboarding_data.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingData data;

  const OnboardingPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          children: [
            const Spacer(),

            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFEAE8FF),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                child: Icon(
                  Icons.auto_awesome,
                  size: 100,
                  color: Color(0xFF4F46E5),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Text(
              data.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F172A),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              data.description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, color: Colors.grey, height: 1.6),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // your widgets
              ],
            ),
          ],
        ),
      ),
    );
  }
}
