import 'package:poketroguemon/domain/pokemon/models/pokemon_instance.dart';
import 'package:poketroguemon/domain/pokemon/models/pokemon_model.dart';

extension PokemonMapper on PokemonModel {
  PokemonInstance toDomain() {
    return PokemonInstance(
      id: id,
      name: name,
      hp: stats.hp,
      attack: stats.attack,
      defense: stats.defense,
      specialAttack: stats.specialAttack,
      specialDefense: stats.specialDefense,
      speed: stats.speed,
      types: types,
      moves: moves,
      sprite: sprite,
    );
  }
}
