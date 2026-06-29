import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poketroguemon/domain/pokemon/models/pokemon_instance.dart';
import 'package:poketroguemon/domain/pokemon/provider/pokemon_state.dart';
import 'package:poketroguemon/services/pokemon_random_service.dart';
import 'package:poketroguemon/domain/pokemon/services/pokemon_service.dart';

final pokemonProvider = NotifierProvider<PokemonNotifier, PokemonState>(
  PokemonNotifier.new,
);

class PokemonNotifier extends Notifier<PokemonState> {
  PokemonRandomService get _service => ref.read(pokemonService);

  @override
  PokemonState build() {
    Future.microtask(() => _init());
    return const PokemonState(loading: true);
  }

  Future<void> _init() async {
    await loadInitialPokemons();
  }

  Future<void> loadInitialPokemons() async {
    try {
      final starters = <PokemonInstance>[];

      for (int i = 0; i < 3; i++) {
        starters.add(await _service.getRandomPokemon());
      }

      state = state.copyWith(pokemons: starters, loading: false);
    } catch (e) {
      state = state.copyWith(loading: false, error: e.toString());
    }
  }

  Future<void> generateRandomPokemon() async {
    state = state.copyWith(loading: true, error: null);

    try {
      final pokemon = await _service.getRandomPokemon();

      state = state.copyWith(
        loading: false,
        pokemons: [...state.pokemons, pokemon],
        selected: pokemon,
      );
    } catch (e) {
      state = state.copyWith(loading: false, error: e.toString());
    }
  }

  void selectPokemon(PokemonInstance pokemon) {
    state = state.copyWith(selected: pokemon);
  }

  void clear() {
    state = const PokemonState();
  }

  void clearPokemons() {
    state = const PokemonState();
  }
}
