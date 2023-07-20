import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  String buttonText;
  final Function()? onTap;

  RoundButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.orange,
          border: Border.all(color: Colors.orange),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
