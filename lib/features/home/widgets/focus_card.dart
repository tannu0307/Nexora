import 'package:flutter/material.dart';

class FocusCard extends StatelessWidget {
  const FocusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF4F46E5), Color(0xFF6366F1)],
        ),

        borderRadius: BorderRadius.circular(22),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text(
                "Today's Focus",
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),

              Icon(Icons.track_changes, color: Colors.white),
            ],
          ),

          const SizedBox(height: 15),

          const Text(
            "Complete DBMS Revision",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            "Target: 3 Hours Study",
            style: TextStyle(color: Colors.white70, fontSize: 15),
          ),

          const SizedBox(height: 20),

          ClipRRect(
            borderRadius: BorderRadius.circular(10),

            child: const LinearProgressIndicator(
              value: 0.6,

              minHeight: 8,

              backgroundColor: Colors.white24,

              color: Colors.white,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            "60% Completed",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),

          const SizedBox(height: 15),

          SizedBox(
            width: double.infinity,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,

                foregroundColor: Color(0xFF4F46E5),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),

              onPressed: () {},

              child: const Text(
                "Continue Focus",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
