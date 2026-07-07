import 'package:poketroguemon/core/utils/components/pokemon_type_style.dart';
import 'package:poketroguemon/domain/card/model/battle_card_model.dart';
import 'package:poketroguemon/domain/moves/models/move_model.dart';

class BattleCardMapper {
  BattleCardModel fromMove(MoveModel move) {
    return BattleCardModel(
      id: move.id.toString(),
      title: move.name,
      description: move.effect ?? "",
      cost: 1,
      type: CardType.move,
      pokemonType: move.type.pokemonType,
      playable: true,
      damageClass: move.damageClass,
      power: move.power
    );
  }
}
