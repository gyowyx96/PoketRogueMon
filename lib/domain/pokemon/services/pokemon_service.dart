import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poketroguemon/services/pokemon_data_source.dart';
import 'package:poketroguemon/services/pokemon_random_service.dart';

final pokemonService = Provider<PokemonRandomService>((ref) {
  return PokemonRandomService(PokemonDataSource());
});