import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text(
          "About Nexora",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [
              // Nexora Header Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(28),

                decoration: BoxDecoration(
                  color: const Color(0xFF4F46E5),
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 15,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),

                child: const Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    CircleAvatar(
                      radius: 45,

                      backgroundColor: Colors.white,

                      child: Icon(
                        Icons.school_rounded,
                        size: 50,
                        color: Color(0xFF4F46E5),
                      ),
                    ),

                    SizedBox(height: 20),

                    Text(
                      "Nexora",

                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 8),

                    Text(
                      "Stop Scrolling. Start Winning.",

                      textAlign: TextAlign.center,

                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              buildCard(
                icon: Icons.info_outline_rounded,
                title: "About Nexora",

                subtitle:
                    "Nexora is an all-in-one student productivity application designed to help students manage their academic life through task management, planner, notes, habit tracking, Pomodoro timer, progress tracking, and AI-powered study assistance.",
              ),

              const SizedBox(height: 16),

              buildCard(
                icon: Icons.flag_rounded,

                title: "Mission",

                subtitle:
                    "To help students stay focused, build better habits, manage their time effectively, and achieve their goals through smart productivity tools.",
              ),

              const SizedBox(height: 16),

              buildCard(
                icon: Icons.verified_rounded,

                title: "Version",

                subtitle: "Version 1.0.0",
              ),

              const SizedBox(height: 16),

              buildCard(
                icon: Icons.code_rounded,

                title: "Developer",

                subtitle:
                    "Developed as the Nexora productivity platform for students.",
              ),

              const SizedBox(height: 35),

              const Text(
                "Made with ❤️ for students",

                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      elevation: 3,

      shadowColor: Colors.black12,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

      child: Padding(
        padding: const EdgeInsets.all(18),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            CircleAvatar(
              radius: 25,

              backgroundColor: const Color(0xFFEEF2FF),

              child: Icon(icon, color: const Color(0xFF4F46E5), size: 26),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    title,

                    style: const TextStyle(
                      fontSize: 18,

                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    subtitle,

                    style: const TextStyle(
                      color: Colors.black87,

                      height: 1.4,

                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
