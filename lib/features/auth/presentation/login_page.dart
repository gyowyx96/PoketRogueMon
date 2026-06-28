import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poketroguemon/features/auth/presentation/register_dialog.dart';
import 'package:poketroguemon/utils/colors.dart';
import '../providers/auth_provider.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool _loading = false;
  bool isCovered = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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

  Future<void> _login() async {
    if (_loading) return;

    final isValid = _formKey.currentState?.validate() ?? false;
    if (!isValid) return;

    setState(() => _loading = true);
    try {
      await ref
          .read(authRepositoryProvider)
          .login(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
          );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.green,
            content: Text("Login riuscito"),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(backgroundColor: Colors.red, content: Text(e.toString())),
        );
      }
    }
    if (mounted) {
      setState(() => _loading = false);
    }
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return RegisterDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    bool isMobile = width < 800;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: Container(
                width: 800,
                padding: .all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow, width: 2),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 15, 15, 26),
                      Color.fromARGB(164, 26, 26, 46),
                    ],
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
                      "POKÉTTO ROGUEMON",
                      textAlign: TextAlign.center,
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
                    _loading
                        ? SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : SizedBox.shrink(),
                    const Spacer(),

                    //Form
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          buildCustomFormField(
                            emailController,
                            "Email",
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return "Inserisci email";
                              }
                              final emailRegex = RegExp(
                                r'^[^@]+@[^@]+\.[^@]+$',
                              );
                              if (!emailRegex.hasMatch(value.trim())) {
                                return "Email non valida";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 12),
                          buildCustomFormField(
                            passwordController,
                            "Password",
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Inserisci password";
                              }
                              if (value.length < 6) {
                                return "Minimo 6 caratteri";
                              }
                              return null;
                            },
                            isPassword: true,
                            obscureText: isCovered,
                            onToggleVisibility: () {
                              setState(() {
                                isCovered = !isCovered;
                              });
                            },
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),
                    !isMobile
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              bottoneLogin(yellow, "Accedi", 250, () {
                                _login();
                              }),
                              const SizedBox(width: 12),
                              bottoneLogin(yellow, "Registrati", 250, () {
                                _dialogBuilder(context);
                              }),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              bottoneLogin(yellow, "Accedi", 400, () {
                                _login();
                              }),
                              const SizedBox(height: 12),
                              bottoneLogin(yellow, "Registrati", 400, () {
                                _dialogBuilder(context);
                              }),
                            ],
                          ),
                    // BUTTON
                    const SizedBox(height: 30),
                    bottoneLogin(blue, "Gioca come ospite", 400, _playAsGuest),
                    const SizedBox(height: 20),
                    bottoneLogin(
                      red,
                      "Accedi con account Google",
                      400,
                      _loginGoogle,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextFormField buildCustomFormField(
    TextEditingController controller,
    String labelText, {
    String? Function(String?)? validator,
    bool isPassword = false,
    bool obscureText = false,
    VoidCallback? onToggleVisibility,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword ? obscureText : false,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
        border: const OutlineInputBorder(),
        suffixIcon: isPassword
            ? IconButton(
                onPressed: onToggleVisibility,
                icon: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.white,
                ),
              )
            : null,
      ),
      validator: validator,
    );
  }

  Padding bottoneLogin(
    Color color,
    String text,
    double width,
    VoidCallback funzioneLogin,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        width: width,
        height: 55,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          onPressed: _loading ? null : funzioneLogin,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: textGold),
          ),
        ),
      ),
    );
  }
}
