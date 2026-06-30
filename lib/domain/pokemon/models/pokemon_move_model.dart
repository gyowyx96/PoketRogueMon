import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_move_model.freezed.dart';
part 'pokemon_move_model.g.dart';

@freezed
abstract class PokemonMoveModel with _$PokemonMoveModel {
  const factory PokemonMoveModel({
    required int moveId,
    required int level,
    required String method,
  }) = _PokemonMoveModel;

  factory PokemonMoveModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonMoveModelFromJson(json);
}