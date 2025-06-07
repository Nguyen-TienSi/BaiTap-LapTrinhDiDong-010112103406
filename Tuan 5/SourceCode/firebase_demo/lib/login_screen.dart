import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Future<void> handleSignIn() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) return;

    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final user = (await FirebaseAuth.instance.signInWithCredential(credential)).user;

    if (mounted && user != null) {
      Navigator.pushReplacementNamed(context, '/profile');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/uth_logo.png', height: 100),
              Text("SmartTasks", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text("A simple and efficient to-do app"),
              SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: handleSignIn,
                icon: Image.asset('images/google_branding_logo.png', height: 24),
                label: Text("SIGN IN WITH GOOGLE"),
              ),
              SizedBox(height: 50),
              Text("© UTHSmartTasks")
            ],
          ),
        ),
      ),
    );
  }
}
