import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool notifications = true;
  bool darkMode = false;
  bool biometric = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "Preferences",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          Card(
            child: SwitchListTile(
              secondary: const Icon(
                Icons.notifications,
                color: Color(0xFF4F46E5),
              ),
              title: const Text("Notifications"),
              value: notifications,
              onChanged: (value) {
                setState(() {
                  notifications = value;
                });
              },
            ),
          ),

          Card(
            child: SwitchListTile(
              secondary: const Icon(Icons.dark_mode, color: Color(0xFF4F46E5)),
              title: const Text("Dark Mode"),
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                });
              },
            ),
          ),

          Card(
            child: SwitchListTile(
              secondary: const Icon(
                Icons.fingerprint,
                color: Color(0xFF4F46E5),
              ),
              title: const Text("Biometric Lock"),
              value: biometric,
              onChanged: (value) {
                setState(() {
                  biometric = value;
                });
              },
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            "More",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 15),

          settingTile(Icons.language, "Language"),
          settingTile(Icons.lock_outline, "Privacy Policy"),
          settingTile(Icons.security, "Security"),
          settingTile(Icons.help_outline, "Help & Support"),
          settingTile(Icons.feedback_outlined, "Send Feedback"),
          settingTile(Icons.info_outline, "About Nexora"),

          const SizedBox(height: 30),

          const Center(
            child: Text("Version 1.0.0", style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }

  Widget settingTile(IconData icon, String title) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF4F46E5)),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
