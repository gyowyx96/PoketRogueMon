import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poketroguemon/features/auth/providers/auth_provider.dart';
import 'package:poketroguemon/utils/colors.dart';

class RegisterDialog extends ConsumerStatefulWidget {
  const RegisterDialog({super.key});

  @override
  ConsumerState<RegisterDialog> createState() => _RegisterDialogState();
}

class _RegisterDialogState extends ConsumerState<RegisterDialog> {
  bool isCovered = true;
  bool isConfirmCovered = true;
  bool _loading = false;

  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();
  final usernameController = TextEditingController();

  Future<void> _register() async {
    if (_loading) return;

    final isValid = _formKey.currentState?.validate() ?? false;
    if (!isValid) return;

    setState(() => _loading = true);

    try {
      await ref
          .read(authRepositoryProvider)
          .register(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
            nickname: usernameController.text.trim(),
          );

      if (mounted) {
        Navigator.of(context).pop();
      }
    } catch (e) {
      debugPrint("Errore di registrazione: $e");
    }

    if (!mounted) return;
    setState(() => _loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: blue,
      title: const Text('Registrati'),
      content: SizedBox(
        width: 400,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 12,
              children: [
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Inserisci email";
                    }
                    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
                    if (!emailRegex.hasMatch(value.trim())) {
                      return "Email non valida";
                    }
                    return null;
                  },
                ),
          
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: usernameController,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: "Username",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Inserisci username";
                    }
                    if (value.trim().length < 3) {
                      return "Minimo 3 caratteri";
                    }
                    return null;
                  },
                ),
          
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    suffixIcon: IconButton(
                      onPressed: () => setState(() => isCovered = !isCovered),
                      icon: Icon(
                        isCovered ? Icons.visibility : Icons.visibility_off,
                        color: Colors.white,
                      ),
                    ),
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: isCovered,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Inserisci password";
                    }
                    if (value.length < 6) {
                      return "Minimo 6 caratteri";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: passwordConfirmController,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    suffixIcon: IconButton(
                      onPressed: () =>
                          setState(() => isConfirmCovered = !isConfirmCovered),
                      icon: Icon(
                        isConfirmCovered
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.white,
                      ),
                    ),
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: isConfirmCovered,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Conferma password";
                    }
                    if (value != passwordController.text) {
                      return "Le password non coincidono";
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: _register,
          child: const Text('Registrati'),
        ),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: darkRed,
            foregroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Annulla'),
        ),
      ],
    );
  }
}
