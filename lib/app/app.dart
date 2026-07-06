import 'package:flutter/material.dart';
import '../features/splash/presentation/splash_screen.dart';
import 'app_theme.dart';

class NexoraApp extends StatelessWidget {
  const NexoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nexora',
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
