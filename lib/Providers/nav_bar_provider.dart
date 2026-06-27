import 'package:flutter_riverpod/flutter_riverpod.dart';

final navBarProvider =
    NotifierProvider<NavBarNotifier, NavBarState>(
  NavBarNotifier.new,
);

class NavBarState {
  final bool isMenuOpen;

  const NavBarState({
    this.isMenuOpen = true,
  });

  NavBarState copyWith({
    int? currentIndex,
    bool? isMenuOpen,
  }) {
    return NavBarState(
      isMenuOpen: isMenuOpen ?? this.isMenuOpen,
    );
  }
}

class NavBarNotifier extends Notifier<NavBarState> {
  @override
  NavBarState build() => const NavBarState();

  void toggleMenu() {
    state = state.copyWith(
      isMenuOpen: !state.isMenuOpen,
    );
  }
}