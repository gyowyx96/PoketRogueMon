import 'dart:math';
import 'package:flutter/material.dart';
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
              ],
            ),
          ),

          /// IMAGE
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),

              child: Image.network(card.image, fit: BoxFit.contain),
            ),
          ),

          /// TITLE
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),

            child: Text(
              card.title,
              textAlign: TextAlign.center,

              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          /// DESCRIPTION
          Padding(
            padding: const EdgeInsets.all(12),

            child: Text(
              card.description,
              textAlign: TextAlign.center,

              style: const TextStyle(color: Colors.white70, fontSize: 14),
            ),
          ),

          const SizedBox(height: 12),
        ],
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
