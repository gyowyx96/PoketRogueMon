import 'dart:math';
import 'package:flutter/material.dart';
import 'package:poketroguemon/core/utils/components/pokemon_type_style.dart';
import 'package:poketroguemon/domain/card/model/battle_card_model.dart';

class BattleCard extends StatefulWidget {
  final BattleCardModel card;
  final double rotation;
  final VoidCallback? onTap;

  const BattleCard({
    super.key,
    required this.card,
    this.rotation = 0,
    this.onTap,
  });

  @override
  State<BattleCard> createState() => _BattleCardState();
}

class _BattleCardState extends State<BattleCard> {
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    return Draggable<BattleCardModel>(
      data: widget.card,

      feedback: Material(
        color: Colors.transparent,
        child: Transform.scale(
          scale: 1.1,
          child: BattleCardView(card: widget.card, hovering: true),
        ),
      ),

      childWhenDragging: Opacity(
        opacity: .25,
        child: BattleCardView(card: widget.card, hovering: false),
      ),

      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => hovering = true),
        onExit: (_) => setState(() => hovering = false),

        child: GestureDetector(
          onTap: widget.onTap,

          child: Transform.translate(
            offset: Offset(0, hovering ? -20 : 0),
            child: AnimatedScale(
              duration: const Duration(milliseconds: 150),
              curve: Curves.easeOut,
              scale: hovering ? 1.08 : 1,

              child: AnimatedRotation(
                duration: const Duration(milliseconds: 150),
                curve: Curves.easeOut,
                turns: widget.rotation / (2 * pi),

                child: BattleCardView(card: widget.card, hovering: hovering),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BattleCardView extends StatelessWidget {
  final BattleCardModel card;
  final bool hovering;

  const BattleCardView({super.key, required this.card, required this.hovering});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      height: 320,

      decoration: BoxDecoration(
        color: const Color(0xff23252b),

        borderRadius: BorderRadius.circular(18),

        border: Border.all(
          color: card.playable ? Colors.amber : Colors.grey,
          width: 3,
        ),

        boxShadow: [
          BoxShadow(
            blurRadius: hovering ? 18 : 8,
            spreadRadius: hovering ? 2 : 0,
            color: Colors.black54,
            offset: const Offset(0, 8),
          ),
        ],
      ),

      child: Column(
        children: [
          /// HEADER
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              card.title,
              textAlign: TextAlign.center,

              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),

            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.blue,

                  child: Text(
                    card.cost.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const Spacer(),

                Icon(_icon(card.type), color: Colors.white),
                if (card.pokemonType != null) card.pokemonType!.icon(size: 24),
              ],
            ),
          ),

          /// IMAGE
          card.image != null
              ? Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),

                    child: Image.network(card.image!, fit: BoxFit.contain),
                  ),
                )
              : SizedBox.shrink(),

          /// DESCRIPTION
          _description(card.description),

          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              card.damageClass ?? "",
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              card.power != null ? card.power.toString() : "",
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ),

          const SizedBox(height: 12),
        ],
      ),
    );
  }

  Padding _description(String description) {
    return Padding(
      padding: const EdgeInsets.all(12),

      child: Tooltip(
        message: description,

        padding: const EdgeInsets.all(12),

        constraints: const BoxConstraints(maxWidth: 200),

        decoration: BoxDecoration(
          color: const Color.fromARGB(192, 0, 0, 0),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white24, width: 1),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),

        textStyle: const TextStyle(
          height: 1.5,
          color: Colors.white,
          fontSize: 13,
          fontFamily: "PressStart2P",
        ),

        preferBelow: false,

        waitDuration: const Duration(milliseconds: 400),

        child: Text(
          description,
          overflow: TextOverflow.ellipsis,
          maxLines: 5,
          textAlign: TextAlign.center,

          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),
      ),
    );
  }

  IconData _icon(CardType type) {
    switch (type) {
      case CardType.move:
        return Icons.sports_martial_arts;

      case CardType.item:
        return Icons.backpack;

      case CardType.status:
        return Icons.auto_fix_high;

      case CardType.ability:
        return Icons.bolt;
    }
  }
}
