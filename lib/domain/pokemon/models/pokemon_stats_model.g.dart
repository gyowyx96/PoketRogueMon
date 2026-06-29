// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonStatsModel _$PokemonStatsModelFromJson(Map<String, dynamic> json) =>
    _PokemonStatsModel(
      hp: (json['hp'] as num).toInt(),
      attack: (json['attack'] as num).toInt(),
      defense: (json['defense'] as num).toInt(),
      specialAttack: (json['specialAttack'] as num).toInt(),
      specialDefense: (json['specialDefense'] as num).toInt(),
      speed: (json['speed'] as num).toInt(),
    );

Map<String, dynamic> _$PokemonStatsModelToJson(_PokemonStatsModel instance) =>
    <String, dynamic>{
      'hp': instance.hp,
      'attack': instance.attack,
      'defense': instance.defense,
      'specialAttack': instance.specialAttack,
      'specialDefense': instance.specialDefense,
      'speed': instance.speed,
    };
