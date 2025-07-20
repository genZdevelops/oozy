// lib/signup_screen.dart

import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';

import 'package:flutter/material.dart';
import 'app_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
              'Login/Sign Up using phone number',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: AppColors.primaryText),
            ),
            const SizedBox(height: 48.0),
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: AppColors.primaryText,
                hintText: 'Phone Number',
                hintStyle: TextStyle(color: AppColors.background),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
              keyboardType: TextInputType.phone,
              style: const TextStyle(color: AppColors.background),
            ),
            const SizedBox(height: 8.0),
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: AppColors.primaryText,
                hintText: 'OTP',
                hintStyle: TextStyle(color: AppColors.background),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
              keyboardType: TextInputType.number,
              style: const TextStyle(color: AppColors.background),
            ),
            const SizedBox(height: 24.0),
            // Button to perform the sign-up.
            ElevatedButton(
              onPressed: () {
                // TODO: Implement OTP verification and signup logic
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryText,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: const Text('Sign Up', style: TextStyle(color: AppColors.background)),
            ),
            // Button to navigate back to login screen
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Login Witth Email',
                style: TextStyle(color: AppColors.primaryText),
              ),
            )
          ],
        ),
      ),
    );
  }
}