import 'package:flutter/material.dart';
import 'package:poketroguemon/features/auth/presentation/auth_gate.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PokéRogueMon',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.yellow)),
      debugShowCheckedModeBanner: false,

      home: const AuthGate(),
    );
  }
}
