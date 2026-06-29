// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) =>
    _PokemonModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      types: (json['types'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      moves: (json['moves'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      stats: PokemonStatsModel.fromJson(json['stats'] as Map<String, dynamic>),
      sprite: json['sprite'] as String,
    );

Map<String, dynamic> _$PokemonModelToJson(_PokemonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
      'moves': instance.moves,
      'stats': instance.stats,
      'sprite': instance.sprite,
    };
