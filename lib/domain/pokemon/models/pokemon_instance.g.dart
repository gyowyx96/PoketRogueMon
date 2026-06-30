// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_instance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonInstance _$PokemonInstanceFromJson(Map<String, dynamic> json) =>
    _PokemonInstance(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      hp: (json['hp'] as num).toInt(),
      attack: (json['attack'] as num).toInt(),
      defense: (json['defense'] as num).toInt(),
      specialAttack: (json['specialAttack'] as num).toInt(),
      specialDefense: (json['specialDefense'] as num).toInt(),
      speed: (json['speed'] as num).toInt(),
      types: (json['types'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      moves: (json['moves'] as List<dynamic>)
          .map((e) => PokemonMoveModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprite: json['sprite'] as String,
      level: (json['level'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$PokemonInstanceToJson(_PokemonInstance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hp': instance.hp,
      'attack': instance.attack,
      'defense': instance.defense,
      'specialAttack': instance.specialAttack,
      'specialDefense': instance.specialDefense,
      'speed': instance.speed,
      'types': instance.types,
      'moves': instance.moves,
      'sprite': instance.sprite,
      'level': instance.level,
    };
