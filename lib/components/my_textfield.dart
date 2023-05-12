import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.black.withOpacity(0.9)),
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            fillColor: Colors.white.withOpacity(0.9),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide:
                    const BorderSide(width: 0, style: BorderStyle.none)),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}
