import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String buttonText;
  final Color buttonColor;
  final Color textColor;
  final Color borderColor;
  final Function()? onTap;
  MyButton({
    super.key,
    required this.buttonText,
    this.buttonColor = Colors.orange,
    this.textColor = Colors.white,
    this.borderColor = Colors.orange,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 800,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: buttonColor,
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(200),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
