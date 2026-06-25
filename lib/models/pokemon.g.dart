// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pokemon _$PokemonFromJson(Map<String, dynamic> json) => _Pokemon(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
  hp: (json['hp'] as num).toInt(),
  attack: (json['attack'] as num).toInt(),
  defense: (json['defense'] as num).toInt(),
  specialAttack: (json['specialAttack'] as num).toInt(),
  specialDefense: (json['specialDefense'] as num).toInt(),
  speed: (json['speed'] as num).toInt(),
  level: (json['level'] as num?)?.toInt() ?? 1,
  imageUrl: json['imageUrl'] as String?,
);

Map<String, dynamic> _$PokemonToJson(_Pokemon instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'types': instance.types,
  'hp': instance.hp,
  'attack': instance.attack,
  'defense': instance.defense,
  'specialAttack': instance.specialAttack,
  'specialDefense': instance.specialDefense,
  'speed': instance.speed,
  'level': instance.level,
  'imageUrl': instance.imageUrl,
};
