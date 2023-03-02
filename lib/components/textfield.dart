import 'package:flutter/material.dart';
class Textfield extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFF1F3F6)
                ),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
              ),
              fillColor: Color(0xFFF1F3F6),
              filled: true
          ),
        ),
      );
  }

}