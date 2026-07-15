import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 55,
              backgroundColor: Color(0xFF4F46E5),
              child: Icon(Icons.person, color: Colors.white, size: 60),
            ),

            const SizedBox(height: 15),

            const Text(
              "Tannu Shree",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 5),

            const Text(
              "CSIT Student",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),

            const SizedBox(height: 30),

            Row(
              children: [
                Expanded(child: statCard("Study Hours", "152", Icons.timer)),

                const SizedBox(width: 15),

                Expanded(child: statCard("Tasks", "89", Icons.check_circle)),
              ],
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                Expanded(child: statCard("Notes", "41", Icons.note)),

                const SizedBox(width: 15),

                Expanded(
                  child: statCard(
                    "Streak",
                    "15 Days",
                    Icons.local_fire_department,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 35),

            profileTile(Icons.person_outline, "Edit Profile"),

            profileTile(Icons.workspace_premium_outlined, "Achievements"),

            profileTile(Icons.flag_outlined, "Goals"),

            profileTile(Icons.bar_chart, "Progress"),

            profileTile(Icons.favorite_border, "Favorite Subjects"),

            profileTile(Icons.logout, "Logout"),
          ],
        ),
      ),
    );
  }

  Widget statCard(String title, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [BoxShadow(blurRadius: 8, color: Colors.black12)],
      ),
      child: Column(
        children: [
          Icon(icon, color: const Color(0xFF4F46E5), size: 35),

          const SizedBox(height: 12),

          Text(
            value,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 6),

          Text(title, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  Widget profileTile(IconData icon, String title) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF4F46E5)),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
