import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../models/app_user.dart';

class AuthRepository {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  AuthRepository(this._auth, this._firestore);

  /// Stream dello stato di autenticazione Firebase (usato da AuthGate).
  Stream<User?> authStateChanges() {
    return _auth.authStateChanges();
  }

  Future<void> logout() async {
    await _auth.signOut();
    debugPrint("Logged out, currentUser: ${_auth.currentUser}");
  }

  /// Login anonimo come ospite. Crea il profilo Firestore se non esiste.
  Future<void> signInGuestAuthOnly() async {
    await _auth.signInAnonymously();
  }

  Future<void> signInWithGoogle() async {
    final provider = GoogleAuthProvider();
    await _auth.signInWithPopup(provider);
  }

  Future<void> signInWithEmail() async {
    final provider = GoogleAuthProvider();
    await _auth.signInWithPopup(provider);
  }

  /// Recupera o crea il profilo Firestore per l'utente attualmente loggato.
  /// Usato dal currentUserProvider in risposta ad authStateChanges.
  Future<AppUser> getOrCreateUserFromAuth() async {
    final firebaseUser = _auth.currentUser;

    if (firebaseUser == null) {
      throw Exception("User not logged in");
    }

    return _createUserIfNeeded(firebaseUser);
  }

  /// Unico punto che crea o legge il documento Firestore di un utente.
  /// Usato sia da signInGuest, signInWithGoogle, sia da getOrCreateUserFromAuth.
  Future<AppUser> _createUserIfNeeded(User firebaseUser) async {
    debugPrint("Checking user: ${firebaseUser.uid}");

    final ref = _firestore.collection('users').doc(firebaseUser.uid);
    final snapshot = await ref.get();

    if (snapshot.exists) {
      debugPrint("User already exists");
      return AppUser.fromFirestore(snapshot);
    }

    debugPrint("Creating Firestore profile");

    final newUser = AppUser(
      uid: firebaseUser.uid,
      nickname: firebaseUser.displayName ?? "Player",
      createdAt: DateTime.now(),
    );

    await ref.set(newUser.toJson());

    return newUser;
  }

  Future<void> incrementRuns(String uid) async {
    final ref = _firestore.collection('users').doc(uid);

    await ref.update({'totalRuns': FieldValue.increment(1)});
  }

  Future<AppUser> register({
    required String email,
    required String password,
    required String nickname,
  }) async {
    final credential = await _auth.createUserWithEmailAndPassword(
      email: email.trim(),
      password: password,
    );

    final firebaseUser = credential.user!;

    final appUser = AppUser(
      uid: firebaseUser.uid,
      nickname: nickname,
      createdAt: DateTime.now(),
    );

    await _firestore
        .collection('users')
        .doc(firebaseUser.uid)
        .set(appUser.toJson());

    return appUser;
  }

  Future<AppUser> login({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password,
      );

      return await getOrCreateUserFromAuth();
    } on FirebaseAuthException catch (e) {
      throw _mapAuthException(e);
    }
  }

  String _mapAuthException(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        return "Utente non trovato";
      case 'wrong-password':
        return "Password errata";
      case 'invalid-email':
        return "Email non valida";
      case 'user-disabled':
        return "Account disabilitato";
      case 'too-many-requests':
        return "Troppi tentativi, riprova più tardi";
      case 'network-request-failed':
        return "Errore di connessione";
      case 'email-already-in-use':
        return "Email già in uso";
      case 'weak-password':
        return "Password troppo debole";
      default:
        return "Errore di login";
    }
  }
}
