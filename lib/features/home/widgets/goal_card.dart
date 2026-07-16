import 'package:flutter/material.dart';

class GoalCard extends StatelessWidget {
  const GoalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(22),

        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              const Text(
                "Current Goals",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              Container(
                padding: const EdgeInsets.all(8),

                decoration: BoxDecoration(
                  color: const Color(0xFFEEF2FF),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: const Icon(Icons.flag, color: Color(0xFF4F46E5)),
              ),
            ],
          ),

          const SizedBox(height: 20),

          goalItem("Flutter Developer", 0.8),

          const SizedBox(height: 18),

          goalItem("Backend Developer", 0.6),

          const SizedBox(height: 18),

          goalItem("AI & Machine Learning", 0.4),
        ],
      ),
    );
  }

  Widget goalItem(String title, double progress) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),

            Text(
              "${(progress * 100).toInt()}%",
              style: const TextStyle(
                color: Color(0xFF4F46E5),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        const SizedBox(height: 8),

        ClipRRect(
          borderRadius: BorderRadius.circular(10),

          child: LinearProgressIndicator(
            value: progress,

            minHeight: 8,

            backgroundColor: Color(0xFFE5E7EB),

            color: Color(0xFF4F46E5),
          ),
        ),
      ],
    );
  }
}
