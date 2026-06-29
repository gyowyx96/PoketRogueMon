import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_stats_model.freezed.dart';
part 'pokemon_stats_model.g.dart';

@freezed
abstract class PokemonStatsModel with _$PokemonStatsModel {
  const factory PokemonStatsModel({
    required int hp,
    required int attack,
    required int defense,
    required int specialAttack,
    required int specialDefense,
    required int speed,
  }) = _PokemonStatsModel;

  factory PokemonStatsModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatsModelFromJson(json);
}
