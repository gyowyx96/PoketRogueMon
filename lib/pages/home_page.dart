import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poketroguemon/features/auth/providers/auth_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("HOME"),

            const SizedBox(height: 20),

            const PlayerDebug(),

            const SizedBox(height: 20),

            Container(
              padding: .all(16),
              color: Colors.red,
              child: ElevatedButton(
                onPressed: () async {
                  final uid = ref.read(currentUserProvider).value?.uid;
                  if (uid == null) return;

                  await ref.read(authRepositoryProvider).incrementRuns(uid);
                },
                child: Text("Incrementa run"),
              ),
            ),

            ElevatedButton(
              onPressed: () async {
                await ref.read(authRepositoryProvider).logout();
                //ref.invalidate(currentUserProvider);
              },
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}

class PlayerDebug extends ConsumerWidget {
  const PlayerDebug({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);

    return user.when(
      loading: () => const CircularProgressIndicator(),

      error: (e, _) => Text("Error: $e"),

      data: (player) {
        if (player == null) {
          return const Text("Caricamento profilo...");
        }
        return Column(
          children: [
            Text(player.nickname),
            Text("Runs: ${player.totalRuns}"),
            Text("Wins: ${player.victories}"),
          ],
        );
      },
    );
  }
}
