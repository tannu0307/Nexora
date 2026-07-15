import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text("Progress"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xFF4F46E5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Text(
                    "Overall Progress",
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    "78%",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const LinearProgressIndicator(
                      value: 0.78,
                      minHeight: 12,
                      backgroundColor: Colors.white24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Weekly Statistics",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            statisticCard("Study Hours", "24 Hours", Icons.timer),

            statisticCard("Completed Tasks", "18 Tasks", Icons.check_circle),

            statisticCard("Notes Created", "12 Notes", Icons.note_alt),

            statisticCard("AI Questions", "36 Questions", Icons.psychology),

            statisticCard(
              "Current Streak",
              "15 Days",
              Icons.local_fire_department,
            ),

            const SizedBox(height: 25),

            const Text(
              "Achievements",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            achievementTile(Icons.emoji_events, "7 Day Study Streak"),

            achievementTile(Icons.workspace_premium, "100 Tasks Completed"),

            achievementTile(Icons.star, "Top Performer"),
          ],
        ),
      ),
    );
  }

  Widget statisticCard(String title, String value, IconData icon) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFF4F46E5),
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(title),
        subtitle: Text(value),
      ),
    );
  }

  Widget achievementTile(IconData icon, String title) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.amber),
        title: Text(title),
      ),
    );
  }
}
