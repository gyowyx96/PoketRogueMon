// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoveModel {

 int get id; String get name; int get type; int? get power; int? get accuracy; int get pp; String get damageClass; String? get effect;
/// Create a copy of MoveModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoveModelCopyWith<MoveModel> get copyWith => _$MoveModelCopyWithImpl<MoveModel>(this as MoveModel, _$identity);

  /// Serializes this MoveModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoveModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.power, power) || other.power == power)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.pp, pp) || other.pp == pp)&&(identical(other.damageClass, damageClass) || other.damageClass == damageClass)&&(identical(other.effect, effect) || other.effect == effect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,power,accuracy,pp,damageClass,effect);

@override
String toString() {
  return 'MoveModel(id: $id, name: $name, type: $type, power: $power, accuracy: $accuracy, pp: $pp, damageClass: $damageClass, effect: $effect)';
}


}

/// @nodoc
abstract mixin class $MoveModelCopyWith<$Res>  {
  factory $MoveModelCopyWith(MoveModel value, $Res Function(MoveModel) _then) = _$MoveModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, int type, int? power, int? accuracy, int pp, String damageClass, String? effect
});




}
/// @nodoc
class _$MoveModelCopyWithImpl<$Res>
    implements $MoveModelCopyWith<$Res> {
  _$MoveModelCopyWithImpl(this._self, this._then);

  final MoveModel _self;
  final $Res Function(MoveModel) _then;

/// Create a copy of MoveModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? power = freezed,Object? accuracy = freezed,Object? pp = null,Object? damageClass = null,Object? effect = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,power: freezed == power ? _self.power : power // ignore: cast_nullable_to_non_nullable
as int?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as int?,pp: null == pp ? _self.pp : pp // ignore: cast_nullable_to_non_nullable
as int,damageClass: null == damageClass ? _self.damageClass : damageClass // ignore: cast_nullable_to_non_nullable
as String,effect: freezed == effect ? _self.effect : effect // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MoveModel].
extension MoveModelPatterns on MoveModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoveModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoveModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoveModel value)  $default,){
final _that = this;
switch (_that) {
case _MoveModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoveModel value)?  $default,){
final _that = this;
switch (_that) {
case _MoveModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int type,  int? power,  int? accuracy,  int pp,  String damageClass,  String? effect)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoveModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.power,_that.accuracy,_that.pp,_that.damageClass,_that.effect);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int type,  int? power,  int? accuracy,  int pp,  String damageClass,  String? effect)  $default,) {final _that = this;
switch (_that) {
case _MoveModel():
return $default(_that.id,_that.name,_that.type,_that.power,_that.accuracy,_that.pp,_that.damageClass,_that.effect);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int type,  int? power,  int? accuracy,  int pp,  String damageClass,  String? effect)?  $default,) {final _that = this;
switch (_that) {
case _MoveModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.power,_that.accuracy,_that.pp,_that.damageClass,_that.effect);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoveModel implements MoveModel {
  const _MoveModel({required this.id, required this.name, required this.type, required this.power, required this.accuracy, required this.pp, required this.damageClass, required this.effect});
  factory _MoveModel.fromJson(Map<String, dynamic> json) => _$MoveModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  int type;
@override final  int? power;
@override final  int? accuracy;
@override final  int pp;
@override final  String damageClass;
@override final  String? effect;

/// Create a copy of MoveModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoveModelCopyWith<_MoveModel> get copyWith => __$MoveModelCopyWithImpl<_MoveModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoveModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoveModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.power, power) || other.power == power)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.pp, pp) || other.pp == pp)&&(identical(other.damageClass, damageClass) || other.damageClass == damageClass)&&(identical(other.effect, effect) || other.effect == effect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,power,accuracy,pp,damageClass,effect);

@override
String toString() {
  return 'MoveModel(id: $id, name: $name, type: $type, power: $power, accuracy: $accuracy, pp: $pp, damageClass: $damageClass, effect: $effect)';
}


}

/// @nodoc
abstract mixin class _$MoveModelCopyWith<$Res> implements $MoveModelCopyWith<$Res> {
  factory _$MoveModelCopyWith(_MoveModel value, $Res Function(_MoveModel) _then) = __$MoveModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int type, int? power, int? accuracy, int pp, String damageClass, String? effect
});




}
/// @nodoc
class __$MoveModelCopyWithImpl<$Res>
    implements _$MoveModelCopyWith<$Res> {
  __$MoveModelCopyWithImpl(this._self, this._then);

  final _MoveModel _self;
  final $Res Function(_MoveModel) _then;

/// Create a copy of MoveModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? power = freezed,Object? accuracy = freezed,Object? pp = null,Object? damageClass = null,Object? effect = freezed,}) {
  return _then(_MoveModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,power: freezed == power ? _self.power : power // ignore: cast_nullable_to_non_nullable
as int?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as int?,pp: null == pp ? _self.pp : pp // ignore: cast_nullable_to_non_nullable
as int,damageClass: null == damageClass ? _self.damageClass : damageClass // ignore: cast_nullable_to_non_nullable
as String,effect: freezed == effect ? _self.effect : effect // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
