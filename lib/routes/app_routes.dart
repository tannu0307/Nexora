import 'package:flutter/material.dart';
import 'package:nexora_app/features/achievements/presentation/achievements_screen.dart';
import 'package:nexora_app/features/notifications/presentation/notifications_screen.dart';

// Authentication
import '../features/auth/presentation/login_screen.dart';
import '../features/auth/presentation/signup_screen.dart';
import '../features/auth/presentation/forgot_password_screen.dart';

// Home
import '../features/home/presentation/home_screen.dart';

// Planner
import '../features/planner/presentation/planner_screen.dart';

// Tasks
import '../features/tasks/presentation/tasks_screen.dart';

// Notes
import '../features/notes/presentation/notes_screen.dart';

// AI Tutor
import '../features/ai_tutor/presentation/ai_tutor_screen.dart';

// Profile
import '../features/profile/presentation/profile_screen.dart';

// Settings
import '../features/settings/presentation/settings_screen.dart';

// Progress
import '../features/progress/presentation/progress_screen.dart';

// Habit
import '../features/habit/presentation/habit_screen.dart';

// Calendar
import '../features/calendar/presentation/calendar_screen.dart';

// Pomodoro
import '../features/pomodoro/presentation/pomodoro_screen.dart';

// Notifications
import '../features/notifications/presentation/notifications_screen.dart';

// Achievements
import '../features/achievements/presentation/achievements_screen.dart';

// Goals
import '../features/goals/presentation/goals_screen.dart';

// Search
import '../features/search/presentation/search_screen.dart';

class AppRoutes {
  // Authentication
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgotPassword = '/forgotPassword';

  // Home
  static const String home = '/home';

  // Planner
  static const String planner = '/planner';

  // Tasks
  static const String tasks = '/tasks';

  // Notes
  static const String notes = '/notes';

  // AI Tutor
  static const String aiTutor = '/aiTutor';

  // Profile
  static const String profile = '/profile';

  // Settings
  static const String settings = '/settings';

  // Progress
  static const String progress = '/progress';

  // Habit
  static const String habit = '/habit';

  // Calendar
  static const String calendar = '/calendar';

  // Pomodoro
  static const String pomodoro = '/pomodoro';

  // Notifications
  static const String notifications = '/notifications';

  // Achievements
  static const String achievements = '/achievements';

  // Goals
  static const String goals = '/goals';

  // Search
  static const String search = '/search';

  static Map<String, WidgetBuilder> routes = {
    login: (context) => const LoginScreen(),
    signup: (context) => const SignupScreen(),
    forgotPassword: (context) => const ForgotPasswordScreen(),

    home: (context) => const HomeScreen(),

    planner: (context) => const PlannerScreen(),

    tasks: (context) => const TasksScreen(),

    notes: (context) => const NotesScreen(),

    aiTutor: (context) => const AITutorScreen(),

    profile: (context) => const ProfileScreen(),

    settings: (context) => const SettingsScreen(),

    progress: (context) => const ProgressScreen(),

    habit: (context) => const HabitScreen(),

    calendar: (context) => const CalendarScreen(),

    pomodoro: (context) => const PomodoroScreen(),

    notifications: (context) => const NotificationsScreen(),

    achievements: (context) => const AchievementsScreen(),

    goals: (context) => const GoalsScreen(),

    search: (context) => const SearchScreen(),
  };
}
