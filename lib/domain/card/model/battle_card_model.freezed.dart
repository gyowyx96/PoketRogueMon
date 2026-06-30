// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BattleCardModel {

 String get id; String get title; String get description; String get image; int get cost; CardType get type; bool get playable; bool get selected; bool get exhausted;
/// Create a copy of BattleCardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattleCardModelCopyWith<BattleCardModel> get copyWith => _$BattleCardModelCopyWithImpl<BattleCardModel>(this as BattleCardModel, _$identity);

  /// Serializes this BattleCardModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattleCardModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.image, image) || other.image == image)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.type, type) || other.type == type)&&(identical(other.playable, playable) || other.playable == playable)&&(identical(other.selected, selected) || other.selected == selected)&&(identical(other.exhausted, exhausted) || other.exhausted == exhausted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,image,cost,type,playable,selected,exhausted);

@override
String toString() {
  return 'BattleCardModel(id: $id, title: $title, description: $description, image: $image, cost: $cost, type: $type, playable: $playable, selected: $selected, exhausted: $exhausted)';
}


}

/// @nodoc
abstract mixin class $BattleCardModelCopyWith<$Res>  {
  factory $BattleCardModelCopyWith(BattleCardModel value, $Res Function(BattleCardModel) _then) = _$BattleCardModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String image, int cost, CardType type, bool playable, bool selected, bool exhausted
});




}
/// @nodoc
class _$BattleCardModelCopyWithImpl<$Res>
    implements $BattleCardModelCopyWith<$Res> {
  _$BattleCardModelCopyWithImpl(this._self, this._then);

  final BattleCardModel _self;
  final $Res Function(BattleCardModel) _then;

/// Create a copy of BattleCardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? image = null,Object? cost = null,Object? type = null,Object? playable = null,Object? selected = null,Object? exhausted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CardType,playable: null == playable ? _self.playable : playable // ignore: cast_nullable_to_non_nullable
as bool,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,exhausted: null == exhausted ? _self.exhausted : exhausted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BattleCardModel].
extension BattleCardModelPatterns on BattleCardModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattleCardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattleCardModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattleCardModel value)  $default,){
final _that = this;
switch (_that) {
case _BattleCardModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattleCardModel value)?  $default,){
final _that = this;
switch (_that) {
case _BattleCardModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String image,  int cost,  CardType type,  bool playable,  bool selected,  bool exhausted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BattleCardModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.image,_that.cost,_that.type,_that.playable,_that.selected,_that.exhausted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String image,  int cost,  CardType type,  bool playable,  bool selected,  bool exhausted)  $default,) {final _that = this;
switch (_that) {
case _BattleCardModel():
return $default(_that.id,_that.title,_that.description,_that.image,_that.cost,_that.type,_that.playable,_that.selected,_that.exhausted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String image,  int cost,  CardType type,  bool playable,  bool selected,  bool exhausted)?  $default,) {final _that = this;
switch (_that) {
case _BattleCardModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.image,_that.cost,_that.type,_that.playable,_that.selected,_that.exhausted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BattleCardModel implements BattleCardModel {
  const _BattleCardModel({required this.id, required this.title, required this.description, required this.image, required this.cost, required this.type, this.playable = false, this.selected = false, this.exhausted = false});
  factory _BattleCardModel.fromJson(Map<String, dynamic> json) => _$BattleCardModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  String image;
@override final  int cost;
@override final  CardType type;
@override@JsonKey() final  bool playable;
@override@JsonKey() final  bool selected;
@override@JsonKey() final  bool exhausted;

/// Create a copy of BattleCardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattleCardModelCopyWith<_BattleCardModel> get copyWith => __$BattleCardModelCopyWithImpl<_BattleCardModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BattleCardModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattleCardModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.image, image) || other.image == image)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.type, type) || other.type == type)&&(identical(other.playable, playable) || other.playable == playable)&&(identical(other.selected, selected) || other.selected == selected)&&(identical(other.exhausted, exhausted) || other.exhausted == exhausted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,image,cost,type,playable,selected,exhausted);

@override
String toString() {
  return 'BattleCardModel(id: $id, title: $title, description: $description, image: $image, cost: $cost, type: $type, playable: $playable, selected: $selected, exhausted: $exhausted)';
}


}

/// @nodoc
abstract mixin class _$BattleCardModelCopyWith<$Res> implements $BattleCardModelCopyWith<$Res> {
  factory _$BattleCardModelCopyWith(_BattleCardModel value, $Res Function(_BattleCardModel) _then) = __$BattleCardModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String image, int cost, CardType type, bool playable, bool selected, bool exhausted
});




}
/// @nodoc
class __$BattleCardModelCopyWithImpl<$Res>
    implements _$BattleCardModelCopyWith<$Res> {
  __$BattleCardModelCopyWithImpl(this._self, this._then);

  final _BattleCardModel _self;
  final $Res Function(_BattleCardModel) _then;

/// Create a copy of BattleCardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? image = null,Object? cost = null,Object? type = null,Object? playable = null,Object? selected = null,Object? exhausted = null,}) {
  return _then(_BattleCardModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CardType,playable: null == playable ? _self.playable : playable // ignore: cast_nullable_to_non_nullable
as bool,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,exhausted: null == exhausted ? _self.exhausted : exhausted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
