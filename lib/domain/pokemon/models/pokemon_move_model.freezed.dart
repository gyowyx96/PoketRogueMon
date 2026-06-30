// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_move_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonMoveModel {

 int get moveId; int get level; String get method;
/// Create a copy of PokemonMoveModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonMoveModelCopyWith<PokemonMoveModel> get copyWith => _$PokemonMoveModelCopyWithImpl<PokemonMoveModel>(this as PokemonMoveModel, _$identity);

  /// Serializes this PokemonMoveModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonMoveModel&&(identical(other.moveId, moveId) || other.moveId == moveId)&&(identical(other.level, level) || other.level == level)&&(identical(other.method, method) || other.method == method));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,moveId,level,method);

@override
String toString() {
  return 'PokemonMoveModel(moveId: $moveId, level: $level, method: $method)';
}


}

/// @nodoc
abstract mixin class $PokemonMoveModelCopyWith<$Res>  {
  factory $PokemonMoveModelCopyWith(PokemonMoveModel value, $Res Function(PokemonMoveModel) _then) = _$PokemonMoveModelCopyWithImpl;
@useResult
$Res call({
 int moveId, int level, String method
});




}
/// @nodoc
class _$PokemonMoveModelCopyWithImpl<$Res>
    implements $PokemonMoveModelCopyWith<$Res> {
  _$PokemonMoveModelCopyWithImpl(this._self, this._then);

  final PokemonMoveModel _self;
  final $Res Function(PokemonMoveModel) _then;

/// Create a copy of PokemonMoveModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? moveId = null,Object? level = null,Object? method = null,}) {
  return _then(_self.copyWith(
moveId: null == moveId ? _self.moveId : moveId // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonMoveModel].
extension PokemonMoveModelPatterns on PokemonMoveModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonMoveModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonMoveModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonMoveModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonMoveModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonMoveModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonMoveModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int moveId,  int level,  String method)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonMoveModel() when $default != null:
return $default(_that.moveId,_that.level,_that.method);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int moveId,  int level,  String method)  $default,) {final _that = this;
switch (_that) {
case _PokemonMoveModel():
return $default(_that.moveId,_that.level,_that.method);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int moveId,  int level,  String method)?  $default,) {final _that = this;
switch (_that) {
case _PokemonMoveModel() when $default != null:
return $default(_that.moveId,_that.level,_that.method);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonMoveModel implements PokemonMoveModel {
  const _PokemonMoveModel({required this.moveId, required this.level, required this.method});
  factory _PokemonMoveModel.fromJson(Map<String, dynamic> json) => _$PokemonMoveModelFromJson(json);

@override final  int moveId;
@override final  int level;
@override final  String method;

/// Create a copy of PokemonMoveModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonMoveModelCopyWith<_PokemonMoveModel> get copyWith => __$PokemonMoveModelCopyWithImpl<_PokemonMoveModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonMoveModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonMoveModel&&(identical(other.moveId, moveId) || other.moveId == moveId)&&(identical(other.level, level) || other.level == level)&&(identical(other.method, method) || other.method == method));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,moveId,level,method);

@override
String toString() {
  return 'PokemonMoveModel(moveId: $moveId, level: $level, method: $method)';
}


}

/// @nodoc
abstract mixin class _$PokemonMoveModelCopyWith<$Res> implements $PokemonMoveModelCopyWith<$Res> {
  factory _$PokemonMoveModelCopyWith(_PokemonMoveModel value, $Res Function(_PokemonMoveModel) _then) = __$PokemonMoveModelCopyWithImpl;
@override @useResult
$Res call({
 int moveId, int level, String method
});




}
/// @nodoc
class __$PokemonMoveModelCopyWithImpl<$Res>
    implements _$PokemonMoveModelCopyWith<$Res> {
  __$PokemonMoveModelCopyWithImpl(this._self, this._then);

  final _PokemonMoveModel _self;
  final $Res Function(_PokemonMoveModel) _then;

/// Create a copy of PokemonMoveModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? moveId = null,Object? level = null,Object? method = null,}) {
  return _then(_PokemonMoveModel(
moveId: null == moveId ? _self.moveId : moveId // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
