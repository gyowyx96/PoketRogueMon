import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_instance.freezed.dart';
part 'pokemon_instance.g.dart';

@freezed
abstract class PokemonInstance with _$PokemonInstance {
  const factory PokemonInstance({
    required int id,
    required String name,

    required int hp,
    required int attack,
    required int defense,
    required int specialAttack,
    required int specialDefense,
    required int speed,

    required List<int> types,
    required List<int> moves,

    required String sprite,

    @Default(1) int level,
  }) = _PokemonInstance;

  factory PokemonInstance.fromJson(Map<String, dynamic> json) =>
      _$PokemonInstanceFromJson(json);
}
