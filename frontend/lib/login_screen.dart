// lib/login_screen.dart

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'app_colors.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'oozy',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: AppColors.primaryText,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Login/Sign up using phone number',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: AppColors.primaryText),
            ),
            const SizedBox(height: 48.0),
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: AppColors.primaryText,
                hintText: 'Email',
                hintStyle: TextStyle(color: AppColors.background),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: AppColors.background),
            ),
            const SizedBox(height: 8.0),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                filled: true,
                fillColor: AppColors.primaryText,
                hintText: 'Password',
                hintStyle: TextStyle(color: AppColors.background),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
              style: const TextStyle(color: AppColors.background),
            ),
            const SizedBox(height: 24.0),
            // Buttton to form Login.
            ElevatedButton(
              onPressed: () {
                // TODO: Implement login logic using firebase/Springboot
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryText,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: const Text('Login', style: TextStyle(color: AppColors.background)),
              ),
              // Button too navigate to signup Screen.
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpScreen()),
                  );
                },
                child: const Text(
                  'Sign Up with Phone number',
                  style: TextStyle(color: AppColors.primaryText),
                ),
              )
          ],
        ),
      ),
    );
  }
}