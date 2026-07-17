import 'package:flutter/material.dart';

class AppInfoScreen extends StatelessWidget {
  const AppInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text(
          "App Information",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),

              decoration: BoxDecoration(
                color: const Color(0xFF4F46E5),
                borderRadius: BorderRadius.circular(20),
              ),

              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 42,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.school,
                      color: Color(0xFF4F46E5),
                      size: 45,
                    ),
                  ),

                  SizedBox(height: 18),

                  Text(
                    "Nexora",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "Student Productivity Platform",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            buildTile(Icons.apps, "Application", "Nexora"),

            buildTile(Icons.verified, "Version", "1.0.0"),

            buildTile(Icons.calendar_today, "Release", "2026"),

            buildTile(Icons.person, "Developer", "Nexora Team"),

            buildTile(Icons.code, "Built With", "Flutter • Riverpod"),

            buildTile(Icons.smart_toy, "AI", "AI Study Assistant"),

            buildTile(Icons.security, "Security", "Secure Authentication"),

            buildTile(Icons.language, "Platform", "Android"),

            const SizedBox(height: 35),

            const Text(
              "Made with ❤️ for students",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 10),

            const Text("© 2026 Nexora", style: TextStyle(color: Colors.grey)),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  static Widget buildTile(IconData icon, String title, String value) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),

      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFFEEF2FF),
          child: Icon(icon, color: const Color(0xFF4F46E5)),
        ),

        title: Text(title),

        subtitle: Text(value),
      ),
    );
  }
}
