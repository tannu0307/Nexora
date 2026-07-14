import 'package:flutter/material.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  final List<Map<String, dynamic>> tasks = [
    {"title": "Complete DBMS Assignment", "completed": false},
    {"title": "Revise Computer Networks", "completed": true},
    {"title": "Practice Flutter UI", "completed": false},
    {"title": "Read AI Notes", "completed": false},
    {"title": "Operating System Revision", "completed": true},
  ];

  @override
  Widget build(BuildContext context) {
    int completedTasks = tasks
        .where((task) => task["completed"] == true)
        .length;

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text("My Tasks"),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Today's Progress",
                    style: TextStyle(color: Colors.white70),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    "$completedTasks / ${tasks.length} Completed",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  LinearProgressIndicator(
                    value: completedTasks / tasks.length,
                    backgroundColor: Colors.white24,
                    color: Colors.white,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 15),

                    child: CheckboxListTile(
                      activeColor: const Color(0xFF4F46E5),

                      title: Text(
                        tasks[index]["title"],
                        style: TextStyle(
                          decoration: tasks[index]["completed"]
                              ? TextDecoration.lineThrough
                              : null,
                        ),
                      ),

                      value: tasks[index]["completed"],

                      onChanged: (value) {
                        setState(() {
                          tasks[index]["completed"] = value!;
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
