import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final icon;
  Color hintTextColor;
  String? Function(String?)? validator;

  MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.icon,
    this.validator,
    this.hintTextColor = Colors.orange,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintStyle: TextStyle(
            color: hintTextColor,
            fontSize: 14,
            fontFamily: "Monterrat",
            fontWeight: FontWeight.w600),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.black, width: 0.3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.black, width: 0.3),
        ),
        fillColor: Colors.grey.shade100,
        filled: true,
        hintText: hintText,
        prefixIcon: icon,
      ),
    );
  }
}
