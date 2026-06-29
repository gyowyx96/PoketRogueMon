import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poketroguemon/domain/pokemon/models/pokemon_stats_model.dart';

part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

@freezed
 abstract class PokemonModel with _$PokemonModel {
  const factory PokemonModel({
    required int id,
    required String name,
    required int height,
    required int weight,
    required List<int> types,
    required List<int> moves,
    required PokemonStatsModel stats,
  }) = _PokemonModel;

  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);
}
