import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/auth_provider.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  bool _loading = false;

  Future<void> _playAsGuest() async {
    if (_loading) return;
    setState(() => _loading = true);
    try {
      await ref.read(authRepositoryProvider).signInGuestAuthOnly();
    } catch (e) {
      debugPrint("Login error: $e");
    }
    if (mounted) {
      setState(() => _loading = false);
    }
  }

  Future<void> _loginGoogle() async {
    if (_loading) return;
    setState(() => _loading = true);
    try {
      await ref.read(authRepositoryProvider).signInWithGoogle();
    } catch (e) {
      debugPrint("Google login error: $e");
    }
    if (mounted) {
      setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0F0F1A), Color(0xFF1A1A2E)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),

            // TITLE
            const Text(
              "POKÉT ROGUEMON",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "A roguelike adventure begins",
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),

            const Spacer(),

            // BUTTON
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4F46E5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: _loading ? null : _playAsGuest,
                  child: _loading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : const Text(
                          "Gioca come ospite",
                          style: TextStyle(fontSize: 16),
                        ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextButton(
              onPressed: _loading ? null : _loginGoogle,
              child: const Text(
                "Accedi con account (coming soon)",
                style: TextStyle(color: Colors.white54),
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
