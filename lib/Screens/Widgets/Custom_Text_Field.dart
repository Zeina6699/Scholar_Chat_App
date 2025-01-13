
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.hintText
  });
  String? hintText;

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle:const TextStyle(color: Colors.white),
        enabledBorder:const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white
          )
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white
          )
        )
      ),
    );
  }
}