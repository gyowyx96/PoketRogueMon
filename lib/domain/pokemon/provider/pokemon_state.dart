import 'package:poketroguemon/domain/card/model/battle_card_model.dart';
import 'package:poketroguemon/domain/moves/models/move_model.dart';
import 'package:poketroguemon/domain/pokemon/models/pokemon_instance.dart';

class PokemonState {
  final List<PokemonInstance> pokemons;
  final PokemonInstance? selected;

  final List<MoveModel> availableMoves;
  final List<BattleCardModel> deck;

  final bool loading;
  final String? error;

  const PokemonState({
    this.pokemons = const [],
    this.selected,
    this.availableMoves = const [],
    this.deck = const [],
    this.loading = false,
    this.error,
  });

  PokemonState copyWith({
    List<PokemonInstance>? pokemons,
    PokemonInstance? selected,
    List<MoveModel>? availableMoves,
    List<BattleCardModel>? deck,
    bool? loading,
    String? error,
  }) {
    return PokemonState(
      pokemons: pokemons ?? this.pokemons,
      selected: selected ?? this.selected,
      availableMoves: availableMoves ?? this.availableMoves,
      deck: deck ?? this.deck,
      loading: loading ?? this.loading,
      error: error,
    );
  }
}
