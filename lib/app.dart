import 'package:flutter/material.dart';
import 'package:poketroguemon/pages/home_page.dart';


class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PokéRogueMon',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.yellow)),
      home: const HomePage(),
    );
  }
}
