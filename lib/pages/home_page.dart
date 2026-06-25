import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> testFirebase() async {
    final user = await FirebaseAuth.instance.signInAnonymously();
    debugPrint("🔥 Firebase OK - UID: ${user.user?.uid}");
  }

  @override
  Widget build(BuildContext context) {
    testFirebase(); // ⚠️ solo per test

    return const Scaffold(
      body: Center(
        child: Text("Test Firebase in corso..."),
      ),
    );
  }
}