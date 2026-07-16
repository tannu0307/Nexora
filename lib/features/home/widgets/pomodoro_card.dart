import 'package:flutter/material.dart';

class PomodoroCard extends StatelessWidget {
  const PomodoroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(22),

      decoration: BoxDecoration(
        color: const Color(0xFF111827),

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
                "Focus Timer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                padding: const EdgeInsets.all(8),

                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(12),
                ),

                child: const Icon(Icons.timer, color: Colors.white),
              ),
            ],
          ),

          const SizedBox(height: 20),

          const Center(
            child: Text(
              "25:00",

              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),

          const SizedBox(height: 15),

          const Center(
            child: Text(
              "Focus Session",

              style: TextStyle(color: Colors.white70, fontSize: 15),
            ),
          ),

          const SizedBox(height: 25),

          SizedBox(
            width: double.infinity,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,

                foregroundColor: Colors.black,

                padding: const EdgeInsets.symmetric(vertical: 14),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),

              onPressed: () {},

              child: const Text(
                "Start Focus",

                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
