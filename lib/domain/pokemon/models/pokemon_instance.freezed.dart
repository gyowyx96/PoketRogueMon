// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_instance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonInstance {

 int get id; String get name; int get hp; int get attack; int get defense; int get specialAttack; int get specialDefense; int get speed; List<int> get types; List<PokemonMoveModel> get moves; String get sprite; int get level;
/// Create a copy of PokemonInstance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonInstanceCopyWith<PokemonInstance> get copyWith => _$PokemonInstanceCopyWithImpl<PokemonInstance>(this as PokemonInstance, _$identity);

  /// Serializes this PokemonInstance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonInstance&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.attack, attack) || other.attack == attack)&&(identical(other.defense, defense) || other.defense == defense)&&(identical(other.specialAttack, specialAttack) || other.specialAttack == specialAttack)&&(identical(other.specialDefense, specialDefense) || other.specialDefense == specialDefense)&&(identical(other.speed, speed) || other.speed == speed)&&const DeepCollectionEquality().equals(other.types, types)&&const DeepCollectionEquality().equals(other.moves, moves)&&(identical(other.sprite, sprite) || other.sprite == sprite)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,hp,attack,defense,specialAttack,specialDefense,speed,const DeepCollectionEquality().hash(types),const DeepCollectionEquality().hash(moves),sprite,level);

@override
String toString() {
  return 'PokemonInstance(id: $id, name: $name, hp: $hp, attack: $attack, defense: $defense, specialAttack: $specialAttack, specialDefense: $specialDefense, speed: $speed, types: $types, moves: $moves, sprite: $sprite, level: $level)';
}


}

/// @nodoc
abstract mixin class $PokemonInstanceCopyWith<$Res>  {
  factory $PokemonInstanceCopyWith(PokemonInstance value, $Res Function(PokemonInstance) _then) = _$PokemonInstanceCopyWithImpl;
@useResult
$Res call({
 int id, String name, int hp, int attack, int defense, int specialAttack, int specialDefense, int speed, List<int> types, List<PokemonMoveModel> moves, String sprite, int level
});




}
/// @nodoc
class _$PokemonInstanceCopyWithImpl<$Res>
    implements $PokemonInstanceCopyWith<$Res> {
  _$PokemonInstanceCopyWithImpl(this._self, this._then);

  final PokemonInstance _self;
  final $Res Function(PokemonInstance) _then;

/// Create a copy of PokemonInstance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? hp = null,Object? attack = null,Object? defense = null,Object? specialAttack = null,Object? specialDefense = null,Object? speed = null,Object? types = null,Object? moves = null,Object? sprite = null,Object? level = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,hp: null == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as int,attack: null == attack ? _self.attack : attack // ignore: cast_nullable_to_non_nullable
as int,defense: null == defense ? _self.defense : defense // ignore: cast_nullable_to_non_nullable
as int,specialAttack: null == specialAttack ? _self.specialAttack : specialAttack // ignore: cast_nullable_to_non_nullable
as int,specialDefense: null == specialDefense ? _self.specialDefense : specialDefense // ignore: cast_nullable_to_non_nullable
as int,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as int,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<int>,moves: null == moves ? _self.moves : moves // ignore: cast_nullable_to_non_nullable
as List<PokemonMoveModel>,sprite: null == sprite ? _self.sprite : sprite // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonInstance].
extension PokemonInstancePatterns on PokemonInstance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonInstance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonInstance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonInstance value)  $default,){
final _that = this;
switch (_that) {
case _PokemonInstance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonInstance value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonInstance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int hp,  int attack,  int defense,  int specialAttack,  int specialDefense,  int speed,  List<int> types,  List<PokemonMoveModel> moves,  String sprite,  int level)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonInstance() when $default != null:
return $default(_that.id,_that.name,_that.hp,_that.attack,_that.defense,_that.specialAttack,_that.specialDefense,_that.speed,_that.types,_that.moves,_that.sprite,_that.level);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int hp,  int attack,  int defense,  int specialAttack,  int specialDefense,  int speed,  List<int> types,  List<PokemonMoveModel> moves,  String sprite,  int level)  $default,) {final _that = this;
switch (_that) {
case _PokemonInstance():
return $default(_that.id,_that.name,_that.hp,_that.attack,_that.defense,_that.specialAttack,_that.specialDefense,_that.speed,_that.types,_that.moves,_that.sprite,_that.level);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int hp,  int attack,  int defense,  int specialAttack,  int specialDefense,  int speed,  List<int> types,  List<PokemonMoveModel> moves,  String sprite,  int level)?  $default,) {final _that = this;
switch (_that) {
case _PokemonInstance() when $default != null:
return $default(_that.id,_that.name,_that.hp,_that.attack,_that.defense,_that.specialAttack,_that.specialDefense,_that.speed,_that.types,_that.moves,_that.sprite,_that.level);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonInstance implements PokemonInstance {
  const _PokemonInstance({required this.id, required this.name, required this.hp, required this.attack, required this.defense, required this.specialAttack, required this.specialDefense, required this.speed, required final  List<int> types, required final  List<PokemonMoveModel> moves, required this.sprite, this.level = 1}): _types = types,_moves = moves;
  factory _PokemonInstance.fromJson(Map<String, dynamic> json) => _$PokemonInstanceFromJson(json);

@override final  int id;
@override final  String name;
@override final  int hp;
@override final  int attack;
@override final  int defense;
@override final  int specialAttack;
@override final  int specialDefense;
@override final  int speed;
 final  List<int> _types;
@override List<int> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}

 final  List<PokemonMoveModel> _moves;
@override List<PokemonMoveModel> get moves {
  if (_moves is EqualUnmodifiableListView) return _moves;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_moves);
}

@override final  String sprite;
@override@JsonKey() final  int level;

/// Create a copy of PokemonInstance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonInstanceCopyWith<_PokemonInstance> get copyWith => __$PokemonInstanceCopyWithImpl<_PokemonInstance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonInstanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonInstance&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.attack, attack) || other.attack == attack)&&(identical(other.defense, defense) || other.defense == defense)&&(identical(other.specialAttack, specialAttack) || other.specialAttack == specialAttack)&&(identical(other.specialDefense, specialDefense) || other.specialDefense == specialDefense)&&(identical(other.speed, speed) || other.speed == speed)&&const DeepCollectionEquality().equals(other._types, _types)&&const DeepCollectionEquality().equals(other._moves, _moves)&&(identical(other.sprite, sprite) || other.sprite == sprite)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,hp,attack,defense,specialAttack,specialDefense,speed,const DeepCollectionEquality().hash(_types),const DeepCollectionEquality().hash(_moves),sprite,level);

@override
String toString() {
  return 'PokemonInstance(id: $id, name: $name, hp: $hp, attack: $attack, defense: $defense, specialAttack: $specialAttack, specialDefense: $specialDefense, speed: $speed, types: $types, moves: $moves, sprite: $sprite, level: $level)';
}


}

/// @nodoc
abstract mixin class _$PokemonInstanceCopyWith<$Res> implements $PokemonInstanceCopyWith<$Res> {
  factory _$PokemonInstanceCopyWith(_PokemonInstance value, $Res Function(_PokemonInstance) _then) = __$PokemonInstanceCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int hp, int attack, int defense, int specialAttack, int specialDefense, int speed, List<int> types, List<PokemonMoveModel> moves, String sprite, int level
});




}
/// @nodoc
class __$PokemonInstanceCopyWithImpl<$Res>
    implements _$PokemonInstanceCopyWith<$Res> {
  __$PokemonInstanceCopyWithImpl(this._self, this._then);

  final _PokemonInstance _self;
  final $Res Function(_PokemonInstance) _then;

/// Create a copy of PokemonInstance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? hp = null,Object? attack = null,Object? defense = null,Object? specialAttack = null,Object? specialDefense = null,Object? speed = null,Object? types = null,Object? moves = null,Object? sprite = null,Object? level = null,}) {
  return _then(_PokemonInstance(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,hp: null == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as int,attack: null == attack ? _self.attack : attack // ignore: cast_nullable_to_non_nullable
as int,defense: null == defense ? _self.defense : defense // ignore: cast_nullable_to_non_nullable
as int,specialAttack: null == specialAttack ? _self.specialAttack : specialAttack // ignore: cast_nullable_to_non_nullable
as int,specialDefense: null == specialDefense ? _self.specialDefense : specialDefense // ignore: cast_nullable_to_non_nullable
as int,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as int,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<int>,moves: null == moves ? _self._moves : moves // ignore: cast_nullable_to_non_nullable
as List<PokemonMoveModel>,sprite: null == sprite ? _self.sprite : sprite // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
