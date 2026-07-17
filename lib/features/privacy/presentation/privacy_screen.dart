import 'package:flutter/material.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text(
          "Privacy Policy",
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
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: const Color(0xFF4F46E5),
                borderRadius: BorderRadius.circular(20),
              ),

              child: const Column(
                children: [
                  Icon(Icons.privacy_tip, color: Colors.white, size: 60),

                  SizedBox(height: 15),

                  Text(
                    "Your Privacy Matters",
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Nexora is committed to protecting your personal information.",
                    textAlign: TextAlign.center,

                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            buildSection(
              "1. Information We Collect",
              "We collect only the information required to provide Nexora services, such as your name, email address, study data, tasks, notes, and preferences.",
            ),

            buildSection(
              "2. How We Use Your Information",
              "Your information is used to personalize your experience, synchronize your data, improve app performance, and provide AI-powered study assistance.",
            ),

            buildSection(
              "3. Data Security",
              "We use industry-standard security practices to protect your information from unauthorized access, alteration, or disclosure.",
            ),

            buildSection(
              "4. Third-Party Services",
              "Some features may use trusted third-party services such as Firebase or Google services for authentication, analytics, or cloud storage.",
            ),

            buildSection(
              "5. Your Rights",
              "You may update, modify, or delete your personal information at any time through your account settings.",
            ),

            buildSection(
              "6. Contact",
              "If you have any questions regarding privacy, please contact the Nexora support team.",
            ),

            const SizedBox(height: 25),

            const Center(
              child: Text(
                "Last Updated: July 2026",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget buildSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            title,

            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 8),

          Text(
            content,

            style: const TextStyle(
              fontSize: 15,
              height: 1.5,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
