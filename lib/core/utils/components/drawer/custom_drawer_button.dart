import 'package:flutter/material.dart';
import 'package:poketroguemon/core/theme/colors.dart';

class CustomDrawerButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomDrawerButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  State<CustomDrawerButton> createState() => _CustomDrawerButtonState();
}

class _CustomDrawerButtonState extends State<CustomDrawerButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: !isHovered ? blue : yellow,
          elevation: 0,
          padding: .all(16),
          shape: RoundedRectangleBorder(),
        ),
        onHover: (_) {
          setState(() {
            isHovered = !isHovered;
          });
        },
        onPressed: widget.onPressed,
        child: Text(widget.text, style: TextStyle(color: red)),
      ),
    );
  }
}
