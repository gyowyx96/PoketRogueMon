// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonModel {

 int get id; String get name; int get height; int get weight; List<int> get types; List<PokemonMoveModel> get moves; PokemonStatsModel get stats; String get sprite;
/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonModelCopyWith<PokemonModel> get copyWith => _$PokemonModelCopyWithImpl<PokemonModel>(this as PokemonModel, _$identity);

  /// Serializes this PokemonModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&const DeepCollectionEquality().equals(other.types, types)&&const DeepCollectionEquality().equals(other.moves, moves)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.sprite, sprite) || other.sprite == sprite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,height,weight,const DeepCollectionEquality().hash(types),const DeepCollectionEquality().hash(moves),stats,sprite);

@override
String toString() {
  return 'PokemonModel(id: $id, name: $name, height: $height, weight: $weight, types: $types, moves: $moves, stats: $stats, sprite: $sprite)';
}


}

/// @nodoc
abstract mixin class $PokemonModelCopyWith<$Res>  {
  factory $PokemonModelCopyWith(PokemonModel value, $Res Function(PokemonModel) _then) = _$PokemonModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, int height, int weight, List<int> types, List<PokemonMoveModel> moves, PokemonStatsModel stats, String sprite
});


$PokemonStatsModelCopyWith<$Res> get stats;

}
/// @nodoc
class _$PokemonModelCopyWithImpl<$Res>
    implements $PokemonModelCopyWith<$Res> {
  _$PokemonModelCopyWithImpl(this._self, this._then);

  final PokemonModel _self;
  final $Res Function(PokemonModel) _then;

/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? height = null,Object? weight = null,Object? types = null,Object? moves = null,Object? stats = null,Object? sprite = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<int>,moves: null == moves ? _self.moves : moves // ignore: cast_nullable_to_non_nullable
as List<PokemonMoveModel>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as PokemonStatsModel,sprite: null == sprite ? _self.sprite : sprite // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonStatsModelCopyWith<$Res> get stats {
  
  return $PokemonStatsModelCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonModel].
extension PokemonModelPatterns on PokemonModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int height,  int weight,  List<int> types,  List<PokemonMoveModel> moves,  PokemonStatsModel stats,  String sprite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonModel() when $default != null:
return $default(_that.id,_that.name,_that.height,_that.weight,_that.types,_that.moves,_that.stats,_that.sprite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int height,  int weight,  List<int> types,  List<PokemonMoveModel> moves,  PokemonStatsModel stats,  String sprite)  $default,) {final _that = this;
switch (_that) {
case _PokemonModel():
return $default(_that.id,_that.name,_that.height,_that.weight,_that.types,_that.moves,_that.stats,_that.sprite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int height,  int weight,  List<int> types,  List<PokemonMoveModel> moves,  PokemonStatsModel stats,  String sprite)?  $default,) {final _that = this;
switch (_that) {
case _PokemonModel() when $default != null:
return $default(_that.id,_that.name,_that.height,_that.weight,_that.types,_that.moves,_that.stats,_that.sprite);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonModel implements PokemonModel {
  const _PokemonModel({required this.id, required this.name, required this.height, required this.weight, required final  List<int> types, required final  List<PokemonMoveModel> moves, required this.stats, required this.sprite}): _types = types,_moves = moves;
  factory _PokemonModel.fromJson(Map<String, dynamic> json) => _$PokemonModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  int height;
@override final  int weight;
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

@override final  PokemonStatsModel stats;
@override final  String sprite;

/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonModelCopyWith<_PokemonModel> get copyWith => __$PokemonModelCopyWithImpl<_PokemonModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&const DeepCollectionEquality().equals(other._types, _types)&&const DeepCollectionEquality().equals(other._moves, _moves)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.sprite, sprite) || other.sprite == sprite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,height,weight,const DeepCollectionEquality().hash(_types),const DeepCollectionEquality().hash(_moves),stats,sprite);

@override
String toString() {
  return 'PokemonModel(id: $id, name: $name, height: $height, weight: $weight, types: $types, moves: $moves, stats: $stats, sprite: $sprite)';
}


}

/// @nodoc
abstract mixin class _$PokemonModelCopyWith<$Res> implements $PokemonModelCopyWith<$Res> {
  factory _$PokemonModelCopyWith(_PokemonModel value, $Res Function(_PokemonModel) _then) = __$PokemonModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int height, int weight, List<int> types, List<PokemonMoveModel> moves, PokemonStatsModel stats, String sprite
});


@override $PokemonStatsModelCopyWith<$Res> get stats;

}
/// @nodoc
class __$PokemonModelCopyWithImpl<$Res>
    implements _$PokemonModelCopyWith<$Res> {
  __$PokemonModelCopyWithImpl(this._self, this._then);

  final _PokemonModel _self;
  final $Res Function(_PokemonModel) _then;

/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? height = null,Object? weight = null,Object? types = null,Object? moves = null,Object? stats = null,Object? sprite = null,}) {
  return _then(_PokemonModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<int>,moves: null == moves ? _self._moves : moves // ignore: cast_nullable_to_non_nullable
as List<PokemonMoveModel>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as PokemonStatsModel,sprite: null == sprite ? _self.sprite : sprite // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonStatsModelCopyWith<$Res> get stats {
  
  return $PokemonStatsModelCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}

// dart format on
