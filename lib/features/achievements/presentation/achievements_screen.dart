import 'package:flutter/material.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> achievements = [
      {
        "title": "7 Day Streak",
        "subtitle": "Study for 7 consecutive days",
        "icon": Icons.local_fire_department,
        "earned": true,
      },
      {
        "title": "100 Tasks",
        "subtitle": "Complete 100 tasks",
        "icon": Icons.check_circle,
        "earned": true,
      },
      {
        "title": "AI Explorer",
        "subtitle": "Ask AI Tutor 50 questions",
        "icon": Icons.psychology,
        "earned": false,
      },
      {
        "title": "Note Master",
        "subtitle": "Create 50 notes",
        "icon": Icons.note_alt,
        "earned": false,
      },
      {
        "title": "Focus Champion",
        "subtitle": "Complete 25 Pomodoro sessions",
        "icon": Icons.timer,
        "earned": false,
      },
      {
        "title": "Perfect Week",
        "subtitle": "Complete every planned task in a week",
        "icon": Icons.workspace_premium,
        "earned": false,
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text("Achievements"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xFF4F46E5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: const [
                  Icon(Icons.emoji_events, size: 60, color: Colors.amber),

                  SizedBox(height: 15),

                  Text(
                    "Level 5",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "XP : 1280 / 2000",
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),

                  SizedBox(height: 20),

                  LinearProgressIndicator(
                    value: 0.64,
                    minHeight: 10,
                    backgroundColor: Colors.white24,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Expanded(
              child: ListView.builder(
                itemCount: achievements.length,
                itemBuilder: (context, index) {
                  final achievement = achievements[index];

                  return Card(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: achievement["earned"]
                            ? Colors.amber
                            : Colors.grey.shade300,
                        child: Icon(
                          achievement["icon"],
                          color: achievement["earned"]
                              ? Colors.white
                              : Colors.grey,
                        ),
                      ),

                      title: Text(achievement["title"]),

                      subtitle: Text(achievement["subtitle"]),

                      trailing: achievement["earned"]
                          ? const Icon(Icons.check_circle, color: Colors.green)
                          : const Icon(Icons.lock_outline, color: Colors.grey),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
