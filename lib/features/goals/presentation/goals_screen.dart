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
      "deadline": "Every Day",
      "icon": Icons.schedule,
    },
    {
      "title": "Complete 25 Tasks",
      "progress": 0.45,
      "subtitle": "Weekly Goal",
      "deadline": "Sunday",
      "icon": Icons.check_circle,
    },
    {
      "title": "Finish DBMS Unit",
      "progress": 0.90,
      "subtitle": "Subject Goal",
      "deadline": "Aug 20",
      "icon": Icons.menu_book,
    },
    {
      "title": "Score 80% in Semester",
      "progress": 0.35,
      "subtitle": "Semester Goal",
      "deadline": "Final Exam",
      "icon": Icons.school,
    },
    {
      "title": "Complete 50 Pomodoro Sessions",
      "progress": 0.55,
      "subtitle": "Focus Goal",
      "deadline": "This Month",
      "icon": Icons.timer,
    },
  ];

  @override
  Widget build(BuildContext context) {
    double overallProgress = 0;

    for (var goal in goals) {
      overallProgress += goal["progress"];
    }

    overallProgress /= goals.length;

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text(
          "Goals",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),

      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xFF4F46E5),
        onPressed: () {},
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text("Add Goal", style: TextStyle(color: Colors.white)),
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
                borderRadius: BorderRadius.circular(22),
              ),

              child: Column(
                children: [
                  const Icon(Icons.flag, color: Colors.white, size: 60),

                  const SizedBox(height: 15),

                  Text(
                    "${goals.length} Active Goals",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "Stay focused and achieve your dreams!",
                    style: TextStyle(color: Colors.white70),
                  ),

                  const SizedBox(height: 20),

                  LinearProgressIndicator(
                    value: overallProgress,
                    minHeight: 10,
                    backgroundColor: Colors.white24,
                    color: Colors.white,
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "Overall Progress ${(overallProgress * 100).toInt()}%",
                    style: const TextStyle(color: Colors.white),
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

                  String status = "In Progress";

                  if (goal["progress"] >= 1) {
                    status = "Completed";
                  } else if (goal["progress"] >= 0.8) {
                    status = "Almost Done";
                  }

                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.only(bottom: 16),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(18),

                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
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
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    const SizedBox(height: 4),

                                    Text(
                                      goal["subtitle"],
                                      style: const TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFEEF2FF),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  status,
                                  style: const TextStyle(
                                    color: Color(0xFF4F46E5),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 18),

                          LinearProgressIndicator(
                            value: goal["progress"],
                            minHeight: 8,
                            backgroundColor: Colors.grey.shade300,
                            color: const Color(0xFF4F46E5),
                          ),

                          const SizedBox(height: 12),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Deadline: ${goal["deadline"]}",
                                style: const TextStyle(color: Colors.grey),
                              ),

                              Text(
                                "${(goal["progress"] * 100).toInt()}%",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4F46E5),
                                ),
                              ),
                            ],
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
