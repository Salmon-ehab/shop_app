import 'package:flutter/material.dart';
import 'package:shop_app/features/splashscreen/presentation/views/widgets/splash_widget/splash_body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: splashbody(),

    );
  }
}
