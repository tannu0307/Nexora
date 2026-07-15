import 'dart:async';
import 'package:flutter/material.dart';

class PomodoroScreen extends StatefulWidget {
  const PomodoroScreen({super.key});

  @override
  State<PomodoroScreen> createState() => _PomodoroScreenState();
}

class _PomodoroScreenState extends State<PomodoroScreen> {
  static const int focusTime = 25 * 60;

  int seconds = focusTime;

  Timer? timer;

  bool isRunning = false;

  void startTimer() {
    if (isRunning) return;

    isRunning = true;

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        setState(() {
          seconds--;
        });
      } else {
        timer.cancel();
        isRunning = false;
      }
    });

    setState(() {});
  }

  void pauseTimer() {
    timer?.cancel();

    setState(() {
      isRunning = false;
    });
  }

  void resetTimer() {
    timer?.cancel();

    setState(() {
      seconds = focusTime;
      isRunning = false;
    });
  }

  String formatTime() {
    int minutes = seconds ~/ 60;
    int sec = seconds % 60;

    return "${minutes.toString().padLeft(2, '0')}:${sec.toString().padLeft(2, '0')}";
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double progress = seconds / focusTime;

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text("Pomodoro Timer"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Focus Session",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 40),

              SizedBox(
                height: 260,
                width: 260,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: progress,
                      strokeWidth: 12,
                      backgroundColor: Colors.grey.shade300,
                      color: const Color(0xFF4F46E5),
                    ),

                    Center(
                      child: Text(
                        formatTime(),
                        style: const TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: startTimer,
                    icon: const Icon(Icons.play_arrow),
                    label: const Text("Start"),
                  ),

                  ElevatedButton.icon(
                    onPressed: pauseTimer,
                    icon: const Icon(Icons.pause),
                    label: const Text("Pause"),
                  ),

                  ElevatedButton.icon(
                    onPressed: resetTimer,
                    icon: const Icon(Icons.restart_alt),
                    label: const Text("Reset"),
                  ),
                ],
              ),

              const SizedBox(height: 50),

              Card(
                child: ListTile(
                  leading: const Icon(
                    Icons.local_fire_department,
                    color: Colors.orange,
                  ),
                  title: const Text("Today's Focus"),
                  subtitle: const Text("3 Sessions Completed"),
                ),
              ),

              Card(
                child: ListTile(
                  leading: const Icon(Icons.emoji_events, color: Colors.amber),
                  title: const Text("Best Streak"),
                  subtitle: const Text("15 Days"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
