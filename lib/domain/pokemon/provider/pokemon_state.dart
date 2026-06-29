import 'package:poketroguemon/domain/pokemon/models/pokemon_instance.dart';

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