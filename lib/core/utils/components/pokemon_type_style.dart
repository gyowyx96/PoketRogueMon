import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum PokemonType {
  normal,
  fire,
  water,
  electric,
  grass,
  ice,
  fighting,
  poison,
  ground,
  flying,
  psychic,
  bug,
  rock,
  ghost,
  dragon,
  dark,
  steel,
  fairy,
}

extension PokemonTypeFromId on int {
  PokemonType get pokemonType {
    switch (this) {
      case 1:
        return PokemonType.normal;
      case 2:
        return PokemonType.fighting;
      case 3:
        return PokemonType.flying;
      case 4:
        return PokemonType.poison;
      case 5:
        return PokemonType.ground;
      case 6:
        return PokemonType.rock;
      case 7:
        return PokemonType.bug;
      case 8:
        return PokemonType.ghost;
      case 9:
        return PokemonType.steel;
      case 10:
        return PokemonType.fire;
      case 11:
        return PokemonType.water;
      case 12:
        return PokemonType.grass;
      case 13:
        return PokemonType.electric;
      case 14:
        return PokemonType.psychic;
      case 15:
        return PokemonType.ice;
      case 16:
        return PokemonType.dragon;
      case 17:
        return PokemonType.dark;
      case 18:
        return PokemonType.fairy;

      default:
        return PokemonType.normal;
    }
  }
}

extension PokemonTypeId on PokemonType {
  int get id {
    return switch (this) {
      PokemonType.normal => 1,
      PokemonType.fighting => 2,
      PokemonType.flying => 3,
      PokemonType.poison => 4,
      PokemonType.ground => 5,
      PokemonType.rock => 6,
      PokemonType.bug => 7,
      PokemonType.ghost => 8,
      PokemonType.steel => 9,
      PokemonType.fire => 10,
      PokemonType.water => 11,
      PokemonType.grass => 12,
      PokemonType.electric => 13,
      PokemonType.psychic => 14,
      PokemonType.ice => 15,
      PokemonType.dragon => 16,
      PokemonType.dark => 17,
      PokemonType.fairy => 18,
    };
  }
}

extension PokemonTypeStyle on PokemonType {
  String get asset => switch (this) {
    PokemonType.normal => "assets/icons/types/normal.svg",
    PokemonType.fire => "assets/icons/types/fire.svg",
    PokemonType.water => "assets/icons/types/water.svg",
    PokemonType.electric => "assets/icons/types/electric.svg",
    PokemonType.grass => "assets/icons/types/grass.svg",
    PokemonType.ice => "assets/icons/types/ice.svg",
    PokemonType.fighting => "assets/icons/types/fighting.svg",
    PokemonType.poison => "assets/icons/types/poison.svg",
    PokemonType.ground => "assets/icons/types/ground.svg",
    PokemonType.flying => "assets/icons/types/flying.svg",
    PokemonType.psychic => "assets/icons/types/psychic.svg",
    PokemonType.bug => "assets/icons/types/bug.svg",
    PokemonType.rock => "assets/icons/types/rock.svg",
    PokemonType.ghost => "assets/icons/types/ghost.svg",
    PokemonType.dragon => "assets/icons/types/dragon.svg",
    PokemonType.dark => "assets/icons/types/dark.svg",
    PokemonType.steel => "assets/icons/types/steel.svg",
    PokemonType.fairy => "assets/icons/types/fairy.svg",
  };

  Color get color => switch (this) {
    PokemonType.fire => const Color(0xFFEE8130),
    PokemonType.water => const Color(0xFF6390F0),
    PokemonType.grass => const Color(0xFF7AC74C),
    PokemonType.electric => const Color(0xFFF7D02C),
    PokemonType.ice => const Color(0xFF96D9D6),
    PokemonType.fighting => const Color(0xFFC22E28),
    PokemonType.poison => const Color(0xFFA33EA1),
    PokemonType.ground => const Color(0xFFE2BF65),
    PokemonType.flying => const Color(0xFFA98FF3),
    PokemonType.psychic => const Color(0xFFF95587),
    PokemonType.bug => const Color(0xFFA6B91A),
    PokemonType.rock => const Color(0xFFB6A136),
    PokemonType.ghost => const Color(0xFF735797),
    PokemonType.dragon => const Color(0xFF6F35FC),
    PokemonType.dark => const Color(0xFF705746),
    PokemonType.steel => const Color(0xFFB7B7CE),
    PokemonType.fairy => const Color(0xFFD685AD),
    PokemonType.normal => const Color(0xFFA8A77A),
  };

  Widget icon({double size = 24}) {
    return SvgPicture.asset(
      asset,
      width: size,
      height: size,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}
