// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TypeModel _$TypeModelFromJson(Map<String, dynamic> json) => _TypeModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  weaknesses: (json['weaknesses'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  resistances: (json['resistances'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  immunities: (json['immunities'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$TypeModelToJson(_TypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weaknesses': instance.weaknesses,
      'resistances': instance.resistances,
      'immunities': instance.immunities,
    };
