// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonStatsModel {

 int get hp; int get attack; int get defense; int get specialAttack; int get specialDefense; int get speed;
/// Create a copy of PokemonStatsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonStatsModelCopyWith<PokemonStatsModel> get copyWith => _$PokemonStatsModelCopyWithImpl<PokemonStatsModel>(this as PokemonStatsModel, _$identity);

  /// Serializes this PokemonStatsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonStatsModel&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.attack, attack) || other.attack == attack)&&(identical(other.defense, defense) || other.defense == defense)&&(identical(other.specialAttack, specialAttack) || other.specialAttack == specialAttack)&&(identical(other.specialDefense, specialDefense) || other.specialDefense == specialDefense)&&(identical(other.speed, speed) || other.speed == speed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hp,attack,defense,specialAttack,specialDefense,speed);

@override
String toString() {
  return 'PokemonStatsModel(hp: $hp, attack: $attack, defense: $defense, specialAttack: $specialAttack, specialDefense: $specialDefense, speed: $speed)';
}


}

/// @nodoc
abstract mixin class $PokemonStatsModelCopyWith<$Res>  {
  factory $PokemonStatsModelCopyWith(PokemonStatsModel value, $Res Function(PokemonStatsModel) _then) = _$PokemonStatsModelCopyWithImpl;
@useResult
$Res call({
 int hp, int attack, int defense, int specialAttack, int specialDefense, int speed
});




}
/// @nodoc
class _$PokemonStatsModelCopyWithImpl<$Res>
    implements $PokemonStatsModelCopyWith<$Res> {
  _$PokemonStatsModelCopyWithImpl(this._self, this._then);

  final PokemonStatsModel _self;
  final $Res Function(PokemonStatsModel) _then;

/// Create a copy of PokemonStatsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hp = null,Object? attack = null,Object? defense = null,Object? specialAttack = null,Object? specialDefense = null,Object? speed = null,}) {
  return _then(_self.copyWith(
hp: null == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as int,attack: null == attack ? _self.attack : attack // ignore: cast_nullable_to_non_nullable
as int,defense: null == defense ? _self.defense : defense // ignore: cast_nullable_to_non_nullable
as int,specialAttack: null == specialAttack ? _self.specialAttack : specialAttack // ignore: cast_nullable_to_non_nullable
as int,specialDefense: null == specialDefense ? _self.specialDefense : specialDefense // ignore: cast_nullable_to_non_nullable
as int,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonStatsModel].
extension PokemonStatsModelPatterns on PokemonStatsModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonStatsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonStatsModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonStatsModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonStatsModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonStatsModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonStatsModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int hp,  int attack,  int defense,  int specialAttack,  int specialDefense,  int speed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonStatsModel() when $default != null:
return $default(_that.hp,_that.attack,_that.defense,_that.specialAttack,_that.specialDefense,_that.speed);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int hp,  int attack,  int defense,  int specialAttack,  int specialDefense,  int speed)  $default,) {final _that = this;
switch (_that) {
case _PokemonStatsModel():
return $default(_that.hp,_that.attack,_that.defense,_that.specialAttack,_that.specialDefense,_that.speed);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int hp,  int attack,  int defense,  int specialAttack,  int specialDefense,  int speed)?  $default,) {final _that = this;
switch (_that) {
case _PokemonStatsModel() when $default != null:
return $default(_that.hp,_that.attack,_that.defense,_that.specialAttack,_that.specialDefense,_that.speed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonStatsModel implements PokemonStatsModel {
  const _PokemonStatsModel({required this.hp, required this.attack, required this.defense, required this.specialAttack, required this.specialDefense, required this.speed});
  factory _PokemonStatsModel.fromJson(Map<String, dynamic> json) => _$PokemonStatsModelFromJson(json);

@override final  int hp;
@override final  int attack;
@override final  int defense;
@override final  int specialAttack;
@override final  int specialDefense;
@override final  int speed;

/// Create a copy of PokemonStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonStatsModelCopyWith<_PokemonStatsModel> get copyWith => __$PokemonStatsModelCopyWithImpl<_PokemonStatsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonStatsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonStatsModel&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.attack, attack) || other.attack == attack)&&(identical(other.defense, defense) || other.defense == defense)&&(identical(other.specialAttack, specialAttack) || other.specialAttack == specialAttack)&&(identical(other.specialDefense, specialDefense) || other.specialDefense == specialDefense)&&(identical(other.speed, speed) || other.speed == speed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hp,attack,defense,specialAttack,specialDefense,speed);

@override
String toString() {
  return 'PokemonStatsModel(hp: $hp, attack: $attack, defense: $defense, specialAttack: $specialAttack, specialDefense: $specialDefense, speed: $speed)';
}


}

/// @nodoc
abstract mixin class _$PokemonStatsModelCopyWith<$Res> implements $PokemonStatsModelCopyWith<$Res> {
  factory _$PokemonStatsModelCopyWith(_PokemonStatsModel value, $Res Function(_PokemonStatsModel) _then) = __$PokemonStatsModelCopyWithImpl;
@override @useResult
$Res call({
 int hp, int attack, int defense, int specialAttack, int specialDefense, int speed
});




}
/// @nodoc
class __$PokemonStatsModelCopyWithImpl<$Res>
    implements _$PokemonStatsModelCopyWith<$Res> {
  __$PokemonStatsModelCopyWithImpl(this._self, this._then);

  final _PokemonStatsModel _self;
  final $Res Function(_PokemonStatsModel) _then;

/// Create a copy of PokemonStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hp = null,Object? attack = null,Object? defense = null,Object? specialAttack = null,Object? specialDefense = null,Object? speed = null,}) {
  return _then(_PokemonStatsModel(
hp: null == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as int,attack: null == attack ? _self.attack : attack // ignore: cast_nullable_to_non_nullable
as int,defense: null == defense ? _self.defense : defense // ignore: cast_nullable_to_non_nullable
as int,specialAttack: null == specialAttack ? _self.specialAttack : specialAttack // ignore: cast_nullable_to_non_nullable
as int,specialDefense: null == specialDefense ? _self.specialDefense : specialDefense // ignore: cast_nullable_to_non_nullable
as int,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
