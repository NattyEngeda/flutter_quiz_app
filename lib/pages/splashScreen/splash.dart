import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter_quiz_app/pages/Questions/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/images/logo/logo.png'),
      title: const Text("Quiz App",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      backgroundColor: Colors.grey.shade100,
      loadingText: Text("Loading..."),
      navigator: Questions(),
      durationInSeconds: 5,
    );
  }
}
