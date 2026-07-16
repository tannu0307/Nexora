import 'package:flutter/material.dart';

import '../features/splash/presentation/splash_screen.dart';
import '../features/about/presentation/about_screen.dart';
import '../features/settings/presentation/settings_screen.dart';

import 'app_theme.dart';

class NexoraApp extends StatelessWidget {
  const NexoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Nexora',

      theme: AppTheme.lightTheme,

      routes: {
        '/about': (context) => const AboutScreen(),

        '/settings': (context) => const SettingsScreen(),
      },

      home: const SplashScreen(),
    );
  }
}
