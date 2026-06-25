import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poketroguemon/pages/home_page.dart';

import '../providers/auth_provider.dart';
import 'login_page.dart';

class AuthGate extends ConsumerWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(firebaseAuthStateProvider);

    return authState.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),

      error: (error, stack) =>
          Scaffold(body: Center(child: Text(error.toString()))),

      data: (user) {
        if (user == null) {
          return const LoginPage();
        }

        return const HomePage();
      },
    );
  }
}
