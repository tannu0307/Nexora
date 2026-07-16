import 'package:flutter/material.dart';

import '../../ai_tutor/presentation/ai_tutor_screen.dart';

class AICard extends StatelessWidget {
  const AICard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(22),

      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF0EA5E9), Color(0xFF2563EB)],
        ),

        borderRadius: BorderRadius.circular(22),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              const Text(
                "Nexora AI Assistant",

                style: TextStyle(
                  color: Colors.white,

                  fontSize: 20,

                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                padding: const EdgeInsets.all(10),

                decoration: BoxDecoration(
                  color: Colors.white24,

                  borderRadius: BorderRadius.circular(12),
                ),

                child: const Icon(Icons.smart_toy, color: Colors.white),
              ),
            ],
          ),

          const SizedBox(height: 15),

          const Text(
            "Need help with your studies?\nAsk Nexora AI anytime.",

            style: TextStyle(color: Colors.white70, fontSize: 15, height: 1.5),
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,

                foregroundColor: Color(0xFF2563EB),

                padding: const EdgeInsets.symmetric(vertical: 14),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),

              onPressed: () {
                Navigator.push(
                  context,

                  MaterialPageRoute(builder: (_) => const AITutorScreen()),
                );
              },

              child: const Text(
                "Ask Nexora AI",

                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
