import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/auth_provider.dart';

class SignupScreen extends ConsumerStatefulWidget {
  const SignupScreen({super.key});

  @override
  ConsumerState<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignupScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isLoading = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> signUpUser() async {
    if (emailController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Please fill all fields")));

      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      await ref
          .read(authProvider.notifier)
          .signUp(emailController.text.trim(), passwordController.text.trim());

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Account created successfully 🎉")),
        );

        Navigator.pop(context);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(e.toString())));
      }
    }

    if (mounted) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up")),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const SizedBox(height: 80),

              const Text(
                "Create Account 🚀",

                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 40),

              TextField(
                controller: emailController,

                keyboardType: TextInputType.emailAddress,

                decoration: const InputDecoration(
                  labelText: "Email",

                  hintText: "example@gmail.com",

                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              TextField(
                controller: passwordController,

                obscureText: true,

                decoration: const InputDecoration(
                  labelText: "Password",

                  hintText: "Minimum 6 characters",

                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,

                child: ElevatedButton(
                  onPressed: isLoading ? null : signUpUser,

                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                  ),

                  child: isLoading
                      ? const SizedBox(
                          height: 22,

                          width: 22,

                          child: CircularProgressIndicator(),
                        )
                      : const Text("Sign Up", style: TextStyle(fontSize: 18)),
                ),
              ),

              const SizedBox(height: 20),

              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },

                child: const Text("Already have an account? Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
