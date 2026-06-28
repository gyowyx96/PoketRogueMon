import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../data/auth_repository.dart';
import '../models/app_user.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(FirebaseAuth.instance, FirebaseFirestore.instance);
});

final firebaseAuthStateProvider = StreamProvider<User?>((ref) {
  return ref.watch(authRepositoryProvider).authStateChanges();
});

final currentUserProvider = StreamProvider.autoDispose<AppUser?>((ref) {
  final repo = ref.watch(authRepositoryProvider);

  return repo
      .authStateChanges()
      .distinct((prev, next) => prev?.uid == next?.uid)
      .asyncExpand((firebaseUser) {

        if (firebaseUser == null) {
          return Stream.value(null);
        }

        return Stream.fromFuture(repo.getOrCreateUserFromAuth()).asyncExpand((
          _,
        ) {
          return FirebaseFirestore.instance
              .collection('users')
              .doc(firebaseUser.uid)
              .snapshots()
              .map((snap) => snap.exists ? AppUser.fromFirestore(snap) : null)
              .distinct();
        });
      });
});
