import 'package:ecommerce_ui_flutter/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3) ,
    () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OnboardingScreen()))
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2D4B3E),
      body: Center(child: Image.asset("assets/images/Logo.png")),
    );
  }
}
