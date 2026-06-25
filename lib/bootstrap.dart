import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:poketroguemon/flavors/app_config.dart';
import 'package:poketroguemon/flavors/flavor.dart';
import 'package:poketroguemon/app.dart';

// generato da FlutterFire CLI
import 'firebase_options.dart';

Future<void> bootstrap(Flavor flavor) async {
  WidgetsFlutterBinding.ensureInitialized();

  AppConfig.flavor = flavor;

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  if (flavor == Flavor.dev) {
    try {
      await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
      FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
    } catch (e) {
      debugPrint('Emulator connection error: $e');
    }
  }

  runApp(const ProviderScope(child: App()));
}
