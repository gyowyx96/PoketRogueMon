// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_move_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonMoveModel _$PokemonMoveModelFromJson(Map<String, dynamic> json) =>
    _PokemonMoveModel(
      moveId: (json['moveId'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      method: json['method'] as String,
    );

Map<String, dynamic> _$PokemonMoveModelToJson(_PokemonMoveModel instance) =>
    <String, dynamic>{
      'moveId': instance.moveId,
      'level': instance.level,
      'method': instance.method,
    };
