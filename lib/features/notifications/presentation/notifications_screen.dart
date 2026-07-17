import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  List<Map<String, dynamic>> notifications = [
    {
      "title": "Task Reminder",
      "subtitle": "Complete your DBMS assignment today.",
      "time": "10 min ago",
      "icon": Icons.assignment,
      "read": false,
    },
    {
      "title": "Study Session",
      "subtitle": "Your Pomodoro session starts in 15 minutes.",
      "time": "30 min ago",
      "icon": Icons.timer,
      "read": false,
    },
    {
      "title": "Achievement Unlocked",
      "subtitle": "Congratulations! 7-day study streak.",
      "time": "Yesterday",
      "icon": Icons.emoji_events,
      "read": true,
    },
    {
      "title": "AI Tutor",
      "subtitle": "AI generated new study suggestions.",
      "time": "Yesterday",
      "icon": Icons.psychology,
      "read": true,
    },
    {
      "title": "Planner",
      "subtitle": "You have 3 upcoming study sessions.",
      "time": "2 days ago",
      "icon": Icons.calendar_today,
      "read": true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    int unread = notifications.where((item) => item["read"] == false).length;

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text("Notifications"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                for (var item in notifications) {
                  item["read"] = true;
                }
              });
            },
            child: const Text("Read All"),
          ),

          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == "clear") {
                setState(() {
                  notifications.clear();
                });
              }
            },
            itemBuilder: (context) => const [
              PopupMenuItem(value: "clear", child: Text("Clear All")),
            ],
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF4F46E5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.notifications_active,
                  color: Colors.white,
                  size: 45,
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Unread Notifications",
                        style: TextStyle(color: Colors.white70),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        "$unread",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: notifications.isEmpty
                ? const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.notifications_off_outlined,
                          size: 90,
                          color: Colors.grey,
                        ),

                        SizedBox(height: 20),

                        Text(
                          "No Notifications",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 8),

                        Text(
                          "You're all caught up!",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemCount: notifications.length,
                    itemBuilder: (context, index) {
                      final item = notifications[index];

                      return Card(
                        margin: const EdgeInsets.only(bottom: 15),

                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: const Color(0xFF4F46E5),
                            child: Icon(item["icon"], color: Colors.white),
                          ),

                          title: Text(item["title"]),

                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item["subtitle"]),
                              const SizedBox(height: 4),
                              Text(
                                item["time"],
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),

                          trailing: item["read"]
                              ? null
                              : Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                ),

                          onTap: () {
                            setState(() {
                              item["read"] = true;
                            });
                          },
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
