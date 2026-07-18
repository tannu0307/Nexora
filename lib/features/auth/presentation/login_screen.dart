import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/auth_provider.dart';
import 'signup_screen.dart';
import '../../home/presentation/home_screen.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isLoading = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  Future<void> loginUser() async {
    if (emailController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter email and password")),
      );

      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      await ref
          .read(authProvider.notifier)
          .login(emailController.text.trim(), passwordController.text.trim());

      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Login Successful 🎉")));

        Navigator.pushReplacement(
          context,

          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(e.toString())));
      }
    } finally {
      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Text(
              "Welcome Back 👋",

              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            TextField(
              controller: emailController,

              keyboardType: TextInputType.emailAddress,

              decoration: const InputDecoration(
                labelText: "Email",

                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            TextField(
              controller: passwordController,

              obscureText: true,

              decoration: const InputDecoration(
                labelText: "Password",

                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: isLoading ? null : loginUser,

                child: isLoading
                    ? const SizedBox(
                        height: 22,

                        width: 22,

                        child: CircularProgressIndicator(),
                      )
                    : const Text("Login"),
              ),
            ),

            const SizedBox(height: 15),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,

                  MaterialPageRoute(builder: (context) => const SignupScreen()),
                );
              },

              child: const Text("Create new account"),
            ),
          ],
        ),
      ),
    );
  }
}
