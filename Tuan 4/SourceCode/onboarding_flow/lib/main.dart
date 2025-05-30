import 'package:flutter/cupertino.dart';
import 'package:onboarding_flow/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(home: SplashScreen());
  }
}
