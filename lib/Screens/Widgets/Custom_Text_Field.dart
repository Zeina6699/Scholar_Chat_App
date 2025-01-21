
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.onChanged,
    this.hintText,
    this.obscured=false
  });
  String? hintText;
  Function(String)? onChanged;
  bool? obscured;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      obscureText: obscured!,
      validator: (data){
        if(data!.isEmpty){
          return 'Field is required !';
        }
        return null;

      },
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