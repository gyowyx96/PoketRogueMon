// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoveModel _$MoveModelFromJson(Map<String, dynamic> json) => _MoveModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  type: (json['type'] as num).toInt(),
  power: (json['power'] as num?)?.toInt(),
  accuracy: (json['accuracy'] as num?)?.toInt(),
  pp: (json['pp'] as num).toInt(),
  damageClass: json['damageClass'] as String,
  effect: json['effect'] as String?,
);

Map<String, dynamic> _$MoveModelToJson(_MoveModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'power': instance.power,
      'accuracy': instance.accuracy,
      'pp': instance.pp,
      'damageClass': instance.damageClass,
      'effect': instance.effect,
    };
