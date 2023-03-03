import 'package:flutter/material.dart';
class Textfield extends StatelessWidget{
  final controller;
  final String hintText;
  final bool obscureText;

  const Textfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });
  @override
  Widget build(BuildContext context) {
      return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFF1F3F6)),
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
              ),
              fillColor: Color(0xFFF1F3F6),
              filled: true,
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey[500])
          ),
        ),
      );
  }

}