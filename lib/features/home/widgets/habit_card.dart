import 'package:flutter/material.dart';

class HabitCard extends StatelessWidget {
  const HabitCard({super.key});

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
                "Habit Streak",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),

                decoration: BoxDecoration(
                  color: const Color(0xFFFFEDD5),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: const Row(
                  children: [
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.orange,
                      size: 20,
                    ),

                    SizedBox(width: 5),

                    Text(
                      "12 Days",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          habitItem("Wake Up Early", true),

          habitItem("Study 2 Hours", true),

          habitItem("Exercise", false),

          habitItem("Read Notes", true),
        ],
      ),
    );
  }

  Widget habitItem(String title, bool completed) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),

      child: Row(
        children: [
          Icon(
            completed ? Icons.check_circle : Icons.radio_button_unchecked,

            color: completed ? const Color(0xFF4F46E5) : Colors.grey,
          ),

          const SizedBox(width: 12),

          Text(
            title,

            style: TextStyle(
              fontSize: 16,

              decoration: completed ? TextDecoration.none : TextDecoration.none,

              color: completed ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
