
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.onChanged,
    this.hintText
  });
  String? hintText;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return  TextField(
      onChanged:onChanged ,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle:const TextStyle(color: Colors.white),
        enabledBorder:const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white
          )
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white
          )
        )
      ),
    );
  }
}