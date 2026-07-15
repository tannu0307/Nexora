import 'package:flutter/material.dart';

class AITutorScreen extends StatefulWidget {
  const AITutorScreen({super.key});

  @override
  State<AITutorScreen> createState() => _AITutorScreenState();
}

class _AITutorScreenState extends State<AITutorScreen> {
  final TextEditingController messageController = TextEditingController();

  final List<Map<String, dynamic>> chats = [
    {
      "isUser": false,
      "message": "Hello 👋 I'm Nexora AI. How can I help you study today?",
    },
  ];

  @override
  void dispose() {
    messageController.dispose();
    super.dispose();
  }

  void sendMessage() {
    if (messageController.text.trim().isEmpty) return;

    setState(() {
      chats.add({"isUser": true, "message": messageController.text});

      chats.add({
        "isUser": false,
        "message":
            "This is a demo response. AI integration will be added later.",
      });

      messageController.clear();
    });
  }

  Widget suggestionChip(String text) {
    return ActionChip(
      label: Text(text),
      backgroundColor: const Color(0xFFEAEAFF),
      onPressed: () {
        messageController.text = text;
      },
    );
  }

  Widget chatBubble(Map<String, dynamic> chat) {
    final bool isUser = chat["isUser"];

    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.all(14),
        constraints: const BoxConstraints(maxWidth: 280),
        decoration: BoxDecoration(
          color: isUser ? const Color(0xFF4F46E5) : Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          chat["message"],
          style: TextStyle(color: isUser ? Colors.white : Colors.black),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text("AI Tutor"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                suggestionChip("Explain DBMS"),
                suggestionChip("Teach Computer Networks"),
                suggestionChip("Flutter Widgets"),
                suggestionChip("AI Notes"),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: chats.length,
              itemBuilder: (context, index) {
                return chatBubble(chats[index]);
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                      hintText: "Ask anything...",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                FloatingActionButton(
                  heroTag: "send",
                  backgroundColor: const Color(0xFF4F46E5),
                  mini: true,
                  onPressed: sendMessage,
                  child: const Icon(Icons.send, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
