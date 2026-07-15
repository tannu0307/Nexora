import 'package:flutter/material.dart';

class HabitScreen extends StatefulWidget {
  const HabitScreen({super.key});

  @override
  State<HabitScreen> createState() => _HabitScreenState();
}

class _HabitScreenState extends State<HabitScreen> {
  final List<Map<String, dynamic>> habits = [
    {"title": "Study 2 Hours", "icon": Icons.menu_book, "completed": true},
    {"title": "Drink 2L Water", "icon": Icons.water_drop, "completed": false},
    {"title": "Exercise", "icon": Icons.fitness_center, "completed": false},
    {"title": "Read 20 Pages", "icon": Icons.book, "completed": true},
    {"title": "Meditation", "icon": Icons.self_improvement, "completed": false},
  ];

  @override
  Widget build(BuildContext context) {
    int completed = habits.where((habit) => habit["completed"] == true).length;

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text("Habit Tracker"),
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
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF4F46E5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Text(
                    "Today's Habits",
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "$completed / ${habits.length}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  LinearProgressIndicator(
                    value: completed / habits.length,
                    backgroundColor: Colors.white24,
                    color: Colors.white,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            Expanded(
              child: ListView.builder(
                itemCount: habits.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: CheckboxListTile(
                      activeColor: const Color(0xFF4F46E5),
                      secondary: Icon(
                        habits[index]["icon"],
                        color: const Color(0xFF4F46E5),
                      ),
                      title: Text(habits[index]["title"]),
                      value: habits[index]["completed"],
                      onChanged: (value) {
                        setState(() {
                          habits[index]["completed"] = value!;
                        });
                      },
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
