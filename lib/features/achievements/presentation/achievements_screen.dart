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
        "title": "100 Tasks Completed",
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

    final unlocked = achievements
        .where((item) => item["earned"] == true)
        .length;

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text(
          "Achievements",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const Text(
              "Complete study activities to unlock achievements and earn XP.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),

            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),

              decoration: BoxDecoration(
                color: const Color(0xFF4F46E5),
                borderRadius: BorderRadius.circular(22),
              ),

              child: Column(
                children: const [
                  Icon(Icons.emoji_events, size: 65, color: Colors.amber),

                  SizedBox(height: 15),

                  Text(
                    "Level 5",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "1280 / 2000 XP",
                    style: TextStyle(color: Colors.white70, fontSize: 17),
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

            const SizedBox(height: 18),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Achievements Unlocked",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),

                  Text(
                    "$unlocked / ${achievements.length}",
                    style: const TextStyle(
                      color: Color(0xFF4F46E5),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: achievements.length,

                itemBuilder: (context, index) {
                  final achievement = achievements[index];

                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.only(bottom: 15),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),

                    child: ListTile(
                      contentPadding: const EdgeInsets.all(15),

                      leading: CircleAvatar(
                        radius: 28,
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

                      title: Text(
                        achievement["title"],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),

                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(achievement["subtitle"]),
                      ),

                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            achievement["earned"]
                                ? Icons.check_circle
                                : Icons.lock_outline,
                            color: achievement["earned"]
                                ? Colors.green
                                : Colors.grey,
                          ),

                          const SizedBox(height: 4),

                          Text(
                            "+100 XP",
                            style: TextStyle(
                              fontSize: 11,
                              color: achievement["earned"]
                                  ? Colors.green
                                  : Colors.grey,
                            ),
                          ),
                        ],
                      ),
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
