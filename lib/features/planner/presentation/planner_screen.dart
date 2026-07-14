import 'package:flutter/material.dart';

class PlannerScreen extends StatefulWidget {
  const PlannerScreen({super.key});

  @override
  State<PlannerScreen> createState() => _PlannerScreenState();
}

class _PlannerScreenState extends State<PlannerScreen> {
  final List<Map<String, String>> todayTasks = [
    {"time": "7:00 AM", "task": "Study DBMS"},
    {"time": "10:00 AM", "task": "Computer Networks"},
    {"time": "2:00 PM", "task": "Flutter Development"},
    {"time": "7:00 PM", "task": "AI Revision"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text("Study Planner"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF4F46E5),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Today's Study Goal",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF4F46E5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "4 / 6 Hours",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  LinearProgressIndicator(
                    value: 0.66,
                    backgroundColor: Colors.white24,
                    color: Colors.white,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Today's Schedule",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            ...todayTasks.map(
              (item) => Card(
                child: ListTile(
                  leading: const Icon(
                    Icons.access_time,
                    color: Color(0xFF4F46E5),
                  ),
                  title: Text(item["task"]!),
                  subtitle: Text(item["time"]!),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Subjects",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: const [
                Chip(label: Text("DBMS")),
                Chip(label: Text("AI")),
                Chip(label: Text("CN")),
                Chip(label: Text("OS")),
                Chip(label: Text("Flutter")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
