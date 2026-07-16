import 'package:flutter/material.dart';

class GoalsScreen extends StatefulWidget {
  const GoalsScreen({super.key});

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  final List<Map<String, dynamic>> goals = [
    {
      "title": "Study 3 Hours Daily",
      "progress": 0.70,
      "subtitle": "Daily Goal",
      "icon": Icons.schedule,
    },
    {
      "title": "Complete 25 Tasks",
      "progress": 0.45,
      "subtitle": "Weekly Goal",
      "icon": Icons.check_circle,
    },
    {
      "title": "Finish DBMS Unit",
      "progress": 0.90,
      "subtitle": "Subject Goal",
      "icon": Icons.menu_book,
    },
    {
      "title": "Score 80% in Semester",
      "progress": 0.35,
      "subtitle": "Semester Goal",
      "icon": Icons.school,
    },
    {
      "title": "Complete 50 Pomodoro Sessions",
      "progress": 0.55,
      "subtitle": "Focus Goal",
      "icon": Icons.timer,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text("Goals"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF4F46E5),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
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
              child: const Column(
                children: [
                  Icon(Icons.flag, color: Colors.white, size: 60),

                  SizedBox(height: 15),

                  Text(
                    "5 Active Goals",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Stay focused and achieve your dreams!",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            Expanded(
              child: ListView.builder(
                itemCount: goals.length,
                itemBuilder: (context, index) {
                  final goal = goals[index];

                  return Card(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: const Color(0xFF4F46E5),
                                child: Icon(goal["icon"], color: Colors.white),
                              ),

                              const SizedBox(width: 15),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      goal["title"],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),

                                    Text(
                                      goal["subtitle"],
                                      style: const TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 15),

                          LinearProgressIndicator(
                            value: goal["progress"],
                            minHeight: 8,
                            backgroundColor: Colors.grey.shade300,
                            color: const Color(0xFF4F46E5),
                          ),

                          const SizedBox(height: 10),

                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "${(goal["progress"] * 100).toInt()}%",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
