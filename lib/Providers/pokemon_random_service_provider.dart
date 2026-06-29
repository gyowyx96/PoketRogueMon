/* import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poketroguemon/domain/pokemon/models/pokemon_instance.dart';
import 'package:poketroguemon/services/pokemon_random_service.dart';
import 'package:poketroguemon/services/pokemon_randomizer.dart';

final pokemonProvider = Provider<PokemonRandomService>((ref) {
  return PokemonRandomService(PokemonDataSource());
});

final randomPokemonProvider =
    AsyncNotifierProvider<RandomPokemonNotifier, PokemonInstance?>(
      RandomPokemonNotifier.new,
    );

class RandomPokemonNotifier extends AsyncNotifier<PokemonInstance?> {
  @override
  Future<PokemonInstance?> build() async {
    return null; 
  }

  Future<void> generate() async {
    final service = ref.read(pokemonProvider);

    state = const AsyncLoading();

    try {
      final pokemon = await service.getRandomPokemon();
      state = AsyncData(pokemon);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}


class PokemonState {
  final List<PokemonInstance> pokemons;
  final PokemonInstance? selected;

  final bool loading;
  final String? error;

  const PokemonState({
    this.pokemons = const [],
    this.selected,
    this.loading = false,
    this.error,
  });

  PokemonState copyWith({
    List<PokemonInstance>? pokemons,
    PokemonInstance? selected,
    bool? loading,
    String? error,
  }) {
    return PokemonState(
      pokemons: pokemons ?? this.pokemons,
      selected: selected ?? this.selected,
      loading: loading ?? this.loading,
      error: error,
    );
  }
}
 */