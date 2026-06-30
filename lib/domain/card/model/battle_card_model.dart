import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_card_model.freezed.dart';
part 'battle_card_model.g.dart';

enum CardType {
  move,
  item,
  status,
  ability,
}

@freezed
abstract class BattleCardModel with _$BattleCardModel {
  const factory BattleCardModel({
    required String id,
    required String title,
    required String description,
    required String image,
    required int cost,
    required CardType type,

    @Default(false) bool playable,
    @Default(false) bool selected,
    @Default(false) bool exhausted,
  }) = _BattleCardModel;

  factory BattleCardModel.fromJson(Map<String, dynamic> json) =>
      _$BattleCardModelFromJson(json);
}