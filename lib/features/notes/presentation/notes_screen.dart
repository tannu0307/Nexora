import 'package:flutter/material.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, dynamic>> pinnedNotes = [
    {
      "title": "DBMS Normalization",
      "subtitle": "Study 1NF, 2NF, 3NF and BCNF.",
      "color": Colors.orange,
    },
    {
      "title": "Flutter Widgets",
      "subtitle": "Practice Stateful & Stateless Widgets.",
      "color": Colors.blue,
    },
  ];

  final List<Map<String, dynamic>> notes = [
    {
      "title": "Computer Networks",
      "subtitle": "Revise OSI & TCP/IP Models",
      "date": "Today",
    },
    {
      "title": "Operating System",
      "subtitle": "Complete CPU Scheduling",
      "date": "Yesterday",
    },
    {
      "title": "Artificial Intelligence",
      "subtitle": "Read Knowledge Representation",
      "date": "2 Days Ago",
    },
    {
      "title": "Flutter",
      "subtitle": "Finish Home Screen UI",
      "date": "3 Days Ago",
    },
  ];

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  Widget buildPinnedCard(Map<String, dynamic> note) {
    return Container(
      width: 220,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: note["color"],
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.push_pin, color: Colors.white),
          const Spacer(),
          Text(
            note["title"],
            style: const TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(note["subtitle"], style: const TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }

  Widget buildNoteTile(Map<String, dynamic> note) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Color(0xFF4F46E5),
          child: Icon(Icons.note_alt_outlined, color: Colors.white),
        ),
        title: Text(
          note["title"],
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(note["subtitle"]),
        trailing: Text(
          note["date"],
          style: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        title: const Text("My Notes"),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF4F46E5),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Search Notes...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Pinned Notes",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            SizedBox(
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: pinnedNotes.length,
                itemBuilder: (context, index) {
                  return buildPinnedCard(pinnedNotes[index]);
                },
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "All Notes",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            Expanded(
              child: ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  return buildNoteTile(notes[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
