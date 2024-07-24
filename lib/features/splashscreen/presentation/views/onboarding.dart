import 'package:flutter/material.dart';
import 'package:shop_app/features/splashscreen/presentation/views/widgets/onboarding_widget/onboarding_body.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
       body: OnboardingBody(),
    );
  }
}
