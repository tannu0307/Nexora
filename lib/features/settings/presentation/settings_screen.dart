import 'package:flutter/material.dart';
import '../../about/presentation/about_screen.dart';
import '../../help_support/presentation/help_support_screen.dart';
import '../../privacy/presentation/privacy_screen.dart';
import '../../terms/presentation/terms_screen.dart';
import '../../app_info/presentation/app_info_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        centerTitle: true,

        backgroundColor: Colors.transparent,

        elevation: 0,

        foregroundColor: Colors.black,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            // Profile Header
            Container(
              width: double.infinity,

              padding: const EdgeInsets.all(25),

              decoration: BoxDecoration(
                color: const Color(0xFF4F46E5),

                borderRadius: BorderRadius.circular(24),
              ),

              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 45,

                    backgroundColor: Colors.white,

                    child: Icon(
                      Icons.person,

                      size: 50,

                      color: Color(0xFF4F46E5),
                    ),
                  ),

                  SizedBox(height: 15),

                  Text(
                    "Nexora Student",

                    style: TextStyle(
                      color: Colors.white,

                      fontSize: 22,

                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 5),

                  Text(
                    "Build. Learn. Grow.",

                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            buildSettingCard(
              context,

              icon: Icons.person_outline,

              title: "Profile",

              subtitle: "Manage your personal information",

              onTap: () {},
            ),

            const SizedBox(height: 15),

            buildSettingCard(
              context,

              icon: Icons.notifications_none,

              title: "Notifications",

              subtitle: "Manage reminders and alerts",

              onTap: () {},
            ),

            const SizedBox(height: 15),

            buildSettingCard(
              context,

              icon: Icons.info_outline,

              title: "About Nexora",

              subtitle: "Learn more about Nexora",

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AboutScreen()),
                );
              },
            ),

            const SizedBox(height: 15),

            buildSettingCard(
              context,

              icon: Icons.help_outline,

              title: "Help & Support",

              subtitle: "Get assistance",

              onTap: () {},
            ),

            const SizedBox(height: 15),

            buildSettingCard(
              context,

              icon: Icons.logout,

              title: "Logout",

              subtitle: "Sign out from your account",

              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSettingCard(
    BuildContext context, {

    required IconData icon,

    required String title,

    required String subtitle,

    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 2,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),

      child: ListTile(
        onTap: onTap,

        contentPadding: const EdgeInsets.all(18),

        leading: CircleAvatar(
          backgroundColor: const Color(0xFFEEF2FF),

          child: Icon(icon, color: const Color(0xFF4F46E5)),
        ),

        title: Text(
          title,

          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),

        subtitle: Text(subtitle),

        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
