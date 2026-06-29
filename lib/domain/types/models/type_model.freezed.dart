// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TypeModel {

 int get id; String get name; List<int> get weaknesses; List<int> get resistances; List<int> get immunities;
/// Create a copy of TypeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeModelCopyWith<TypeModel> get copyWith => _$TypeModelCopyWithImpl<TypeModel>(this as TypeModel, _$identity);

  /// Serializes this TypeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.weaknesses, weaknesses)&&const DeepCollectionEquality().equals(other.resistances, resistances)&&const DeepCollectionEquality().equals(other.immunities, immunities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(weaknesses),const DeepCollectionEquality().hash(resistances),const DeepCollectionEquality().hash(immunities));

@override
String toString() {
  return 'TypeModel(id: $id, name: $name, weaknesses: $weaknesses, resistances: $resistances, immunities: $immunities)';
}


}

/// @nodoc
abstract mixin class $TypeModelCopyWith<$Res>  {
  factory $TypeModelCopyWith(TypeModel value, $Res Function(TypeModel) _then) = _$TypeModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, List<int> weaknesses, List<int> resistances, List<int> immunities
});




}
/// @nodoc
class _$TypeModelCopyWithImpl<$Res>
    implements $TypeModelCopyWith<$Res> {
  _$TypeModelCopyWithImpl(this._self, this._then);

  final TypeModel _self;
  final $Res Function(TypeModel) _then;

/// Create a copy of TypeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? weaknesses = null,Object? resistances = null,Object? immunities = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,weaknesses: null == weaknesses ? _self.weaknesses : weaknesses // ignore: cast_nullable_to_non_nullable
as List<int>,resistances: null == resistances ? _self.resistances : resistances // ignore: cast_nullable_to_non_nullable
as List<int>,immunities: null == immunities ? _self.immunities : immunities // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [TypeModel].
extension TypeModelPatterns on TypeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TypeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TypeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TypeModel value)  $default,){
final _that = this;
switch (_that) {
case _TypeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TypeModel value)?  $default,){
final _that = this;
switch (_that) {
case _TypeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  List<int> weaknesses,  List<int> resistances,  List<int> immunities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TypeModel() when $default != null:
return $default(_that.id,_that.name,_that.weaknesses,_that.resistances,_that.immunities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  List<int> weaknesses,  List<int> resistances,  List<int> immunities)  $default,) {final _that = this;
switch (_that) {
case _TypeModel():
return $default(_that.id,_that.name,_that.weaknesses,_that.resistances,_that.immunities);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  List<int> weaknesses,  List<int> resistances,  List<int> immunities)?  $default,) {final _that = this;
switch (_that) {
case _TypeModel() when $default != null:
return $default(_that.id,_that.name,_that.weaknesses,_that.resistances,_that.immunities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TypeModel implements TypeModel {
  const _TypeModel({required this.id, required this.name, required final  List<int> weaknesses, required final  List<int> resistances, required final  List<int> immunities}): _weaknesses = weaknesses,_resistances = resistances,_immunities = immunities;
  factory _TypeModel.fromJson(Map<String, dynamic> json) => _$TypeModelFromJson(json);

@override final  int id;
@override final  String name;
 final  List<int> _weaknesses;
@override List<int> get weaknesses {
  if (_weaknesses is EqualUnmodifiableListView) return _weaknesses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weaknesses);
}

 final  List<int> _resistances;
@override List<int> get resistances {
  if (_resistances is EqualUnmodifiableListView) return _resistances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_resistances);
}

 final  List<int> _immunities;
@override List<int> get immunities {
  if (_immunities is EqualUnmodifiableListView) return _immunities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_immunities);
}


/// Create a copy of TypeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypeModelCopyWith<_TypeModel> get copyWith => __$TypeModelCopyWithImpl<_TypeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._weaknesses, _weaknesses)&&const DeepCollectionEquality().equals(other._resistances, _resistances)&&const DeepCollectionEquality().equals(other._immunities, _immunities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_weaknesses),const DeepCollectionEquality().hash(_resistances),const DeepCollectionEquality().hash(_immunities));

@override
String toString() {
  return 'TypeModel(id: $id, name: $name, weaknesses: $weaknesses, resistances: $resistances, immunities: $immunities)';
}


}

/// @nodoc
abstract mixin class _$TypeModelCopyWith<$Res> implements $TypeModelCopyWith<$Res> {
  factory _$TypeModelCopyWith(_TypeModel value, $Res Function(_TypeModel) _then) = __$TypeModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, List<int> weaknesses, List<int> resistances, List<int> immunities
});




}
/// @nodoc
class __$TypeModelCopyWithImpl<$Res>
    implements _$TypeModelCopyWith<$Res> {
  __$TypeModelCopyWithImpl(this._self, this._then);

  final _TypeModel _self;
  final $Res Function(_TypeModel) _then;

/// Create a copy of TypeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? weaknesses = null,Object? resistances = null,Object? immunities = null,}) {
  return _then(_TypeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,weaknesses: null == weaknesses ? _self._weaknesses : weaknesses // ignore: cast_nullable_to_non_nullable
as List<int>,resistances: null == resistances ? _self._resistances : resistances // ignore: cast_nullable_to_non_nullable
as List<int>,immunities: null == immunities ? _self._immunities : immunities // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
