import 'package:flutter/material.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text(
          "Terms & Conditions",
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
                  Icon(Icons.gavel_rounded, color: Colors.white, size: 60),

                  SizedBox(height: 15),

                  Text(
                    "Terms & Conditions",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Please read these terms carefully before using Nexora.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            buildSection(
              "1. Acceptance",
              "By using Nexora, you agree to follow these Terms & Conditions.",
            ),

            buildSection(
              "2. User Responsibilities",
              "Users are responsible for keeping their account secure and for all activities performed using their account.",
            ),

            buildSection(
              "3. Proper Use",
              "Nexora is intended for educational and productivity purposes. Misuse of the application is prohibited.",
            ),

            buildSection(
              "4. Intellectual Property",
              "All designs, logos, content, and features of Nexora belong to the Nexora project unless otherwise stated.",
            ),

            buildSection(
              "5. Limitation of Liability",
              "Nexora is provided 'as is'. We are not responsible for any loss of data, academic results, or damages arising from the use of the app.",
            ),

            buildSection(
              "6. Updates",
              "These Terms & Conditions may be updated from time to time. Continued use of Nexora means you accept any updates.",
            ),

            buildSection(
              "7. Contact",
              "If you have any questions regarding these Terms & Conditions, please contact the Nexora support team.",
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
