import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poketroguemon/Providers/nav_bar_provider.dart';

Widget buildAppBar(WidgetRef ref) {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        ref.read(navBarProvider.notifier).toggleMenu();
      },
      icon: Icon(Icons.menu, color: Colors.black),
    ),
  );
}
