import 'package:flutter/material.dart';

import '../../planner/presentation/planner_screen.dart';
import '../../tasks/presentation/tasks_screen.dart';
import '../../notes/presentation/notes_screen.dart';
import '../../ai_tutor/presentation/ai_tutor_screen.dart';
import '../../progress/presentation/progress_screen.dart';
import '../../habit/presentation/habit_screen.dart';
import '../../goals/presentation/goals_screen.dart';
import '../../achievements/presentation/achievements_screen.dart';
import '../../notifications/presentation/notifications_screen.dart';
import '../../settings/presentation/settings_screen.dart';
import '../../profile/presentation/profile_screen.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF4F46E5)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40, color: Color(0xFF4F46E5)),
              ),
              accountName: Text("Student"),
              accountEmail: Text("student@nexora.com"),
            ),

            drawerTile(context, Icons.home, "Home", () {
              Navigator.pop(context);
            }),

            drawerTile(context, Icons.person, "Profile", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ProfileScreen()),
              );
            }),

            drawerTile(context, Icons.calendar_month, "Planner", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PlannerScreen()),
              );
            }),

            drawerTile(context, Icons.check_circle_outline, "Tasks", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const TasksScreen()),
              );
            }),

            drawerTile(context, Icons.note_alt_outlined, "Notes", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const NotesScreen()),
              );
            }),

            drawerTile(context, Icons.psychology, "AI Tutor", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AITutorScreen()),
              );
            }),

            drawerTile(context, Icons.bar_chart, "Progress", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ProgressScreen()),
              );
            }),

            drawerTile(context, Icons.local_fire_department, "Habits", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const HabitScreen()),
              );
            }),

            drawerTile(context, Icons.flag, "Goals", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const GoalsScreen()),
              );
            }),

            drawerTile(context, Icons.emoji_events, "Achievements", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AchievementsScreen()),
              );
            }),

            drawerTile(context, Icons.notifications, "Notifications", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const NotificationsScreen()),
              );
            }),

            drawerTile(context, Icons.settings, "Settings", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SettingsScreen()),
              );
            }),

            const Divider(),

            drawerTile(context, Icons.logout, "Logout", () {
              Navigator.pop(context);

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Logout feature coming soon")),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget drawerTile(
    BuildContext context,
    IconData icon,
    String title,
    VoidCallback onTap,
  ) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF4F46E5)),
      title: Text(title),
      onTap: onTap,
    );
  }
}
