import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poketroguemon/Providers/nav_bar_provider.dart';
import 'package:poketroguemon/features/auth/providers/auth_provider.dart';
import 'package:poketroguemon/utils/Components/Drawer/custom_drawer_button.dart';
import 'package:poketroguemon/utils/colors.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navBar = ref.watch(navBarProvider);
    final size = MediaQuery.of(context).size;
    final width = size.width;
    bool isMobile = width < 800;
    //debugPrint(width.toString());
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 187, 186, 139),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [blue, yellow, darkRed],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            ref.read(navBarProvider.notifier).toggleMenu();
          },
          icon: Icon(Icons.menu),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Logo"),
            ref
                .watch(currentUserProvider)
                .when(
                  loading: () => const Text(""),
                  error: (_, _) => const Text("Error"),
                  data: (user) => Text(user?.nickname ?? "Guest"),
                ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
          if (isMobile) buildMobileMenu(navBar) else buildDrawer(navBar, 200),
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
            transform: Matrix4.translationValues(
              isMobile
                  ? 0
                  : navBar.isMenuOpen
                  ? 100
                  : 0,
              isMobile ? (navBar.isMenuOpen ? -30 : 0) : 0,
              0,
            ),
            child: Padding(
              padding: EdgeInsets.all(isMobile ? 50.0 : 100),
              child: Center(
                child: Container(
                  width: isMobile
                      ? width * 0.8
                      : !navBar.isMenuOpen
                      ? (width - 200) * 0.8
                      : (width - 200) * 0.7,
                  color: Colors.black,
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
                            final uid = ref
                                .read(currentUserProvider)
                                .value
                                ?.uid;
                            if (uid == null) return;

                            await ref
                                .read(authRepositoryProvider)
                                .incrementRuns(uid);
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
              ),
            ),
          ),
        ],
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

Widget buildDrawer(NavBarState navBar, double size) {
  return AnimatedSlide(
    duration: const Duration(milliseconds: 250),
    curve: Curves.easeInOut,
    offset: navBar.isMenuOpen ? Offset.zero : const Offset(-1, 0),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: size,
        color: const Color.fromARGB(186, 0, 0, 0),
        padding: .all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  "Menu",
                  style: TextStyle(color: yellow, fontSize: 24),
                ),
              ),
            ),
            CustomDrawerButton(text: "Pokedex", onPressed: () {}),
            CustomDrawerButton(
              text: "Settings",
              onPressed: () => debugPrint("Settings"),
            ),
            CustomDrawerButton(
              text: "Audio",
              onPressed: () => debugPrint("Audio"),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget buildMobileMenu(NavBarState navBar) {
  return Positioned(
    left: 0,
    right: 0,
    bottom: 0,
    child: AnimatedSlide(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOutCubic,
      offset: navBar.isMenuOpen
          ? Offset.zero
          : const Offset(0, 1), // scende di 100% della sua altezza
      child: Container(
        height: 60,
        color: const Color.fromARGB(186, 0, 0, 0),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 12,
            children: [
              Expanded(
                child: CustomDrawerButton(text: "Pokedex", onPressed: () {}),
              ),
              Expanded(
                child: CustomDrawerButton(text: "Settings", onPressed: () {}),
              ),
              Expanded(
                child: CustomDrawerButton(text: "Audio", onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
