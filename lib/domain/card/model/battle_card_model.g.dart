// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BattleCardModel _$BattleCardModelFromJson(Map<String, dynamic> json) =>
    _BattleCardModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      image: json['image'] as String?,
      cost: (json['cost'] as num).toInt(),
      type: $enumDecode(_$CardTypeEnumMap, json['type']),
      pokemonType: $enumDecodeNullable(
        _$PokemonTypeEnumMap,
        json['pokemonType'],
      ),
      damageClass: json['damageClass'] as String?,
      power: (json['power'] as num?)?.toInt(),
      playable: json['playable'] as bool? ?? false,
      selected: json['selected'] as bool? ?? false,
      exhausted: json['exhausted'] as bool? ?? false,
    );

Map<String, dynamic> _$BattleCardModelToJson(_BattleCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'cost': instance.cost,
      'type': _$CardTypeEnumMap[instance.type]!,
      'pokemonType': _$PokemonTypeEnumMap[instance.pokemonType],
      'damageClass': instance.damageClass,
      'power': instance.power,
      'playable': instance.playable,
      'selected': instance.selected,
      'exhausted': instance.exhausted,
    };

const _$CardTypeEnumMap = {
  CardType.move: 'move',
  CardType.item: 'item',
  CardType.status: 'status',
  CardType.ability: 'ability',
};

const _$PokemonTypeEnumMap = {
  PokemonType.normal: 'normal',
  PokemonType.fire: 'fire',
  PokemonType.water: 'water',
  PokemonType.electric: 'electric',
  PokemonType.grass: 'grass',
  PokemonType.ice: 'ice',
  PokemonType.fighting: 'fighting',
  PokemonType.poison: 'poison',
  PokemonType.ground: 'ground',
  PokemonType.flying: 'flying',
  PokemonType.psychic: 'psychic',
  PokemonType.bug: 'bug',
  PokemonType.rock: 'rock',
  PokemonType.ghost: 'ghost',
  PokemonType.dragon: 'dragon',
  PokemonType.dark: 'dark',
  PokemonType.steel: 'steel',
  PokemonType.fairy: 'fairy',
};
