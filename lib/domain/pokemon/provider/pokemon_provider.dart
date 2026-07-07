import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poketroguemon/domain/moves/move_service.dart';
import 'package:poketroguemon/domain/pokemon/models/pokemon_instance.dart';
import 'package:poketroguemon/domain/pokemon/provider/pokemon_state.dart';
import 'package:poketroguemon/mapper/battle_card_mapper.dart';
import 'package:poketroguemon/services/move_data_source.dart';
import 'package:poketroguemon/services/pokemon_random_service.dart';
import 'package:poketroguemon/domain/pokemon/services/pokemon_service.dart';

final pokemonProvider = NotifierProvider<PokemonNotifier, PokemonState>(
  PokemonNotifier.new,
);
final battleCardMapperProvider = Provider((ref) => BattleCardMapper());
final moveServiceProvider = Provider((ref) => MoveService(MoveDataSource()));

class PokemonNotifier extends Notifier<PokemonState> {
  PokemonRandomService get _service => ref.read(pokemonService);
  BattleCardMapper get _cardMapper => ref.read(battleCardMapperProvider);
  MoveService get _moveService => ref.read(moveServiceProvider);
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

  Future<void> selectPokemon(PokemonInstance pokemon) async {
    state = state.copyWith(loading: true, selected: pokemon);

    try {
      final learnedMoves = pokemon.moves
          .where((m) => m.level <= pokemon.level)
          .toList();

      final moveIds = learnedMoves.map((m) => m.moveId).toList();

      final moves = await _moveService.getMovesByIds(moveIds);

      final cards = moves.map(_cardMapper.fromMove).toList();

      state = state.copyWith(
        loading: false,
        availableMoves: moves,
        deck: cards,
      );
    } catch (e) {
      state = state.copyWith(loading: false, error: e.toString());
    }
  }

  /*   void getMoves(PokemonInstance pokemon) {
    final moves = pokemon.moves.where((m) => m.level <= pokemon.level).toList();

    state = state.copyWith(availableMoves: moves);
  } */

  void clear() {
    state = const PokemonState();
  }

  void clearPokemons() {
    state = const PokemonState();
  }
}
