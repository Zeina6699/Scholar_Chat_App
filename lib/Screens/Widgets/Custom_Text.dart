

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
   CustomText({
  required  this.text,
    this.color,
    this.fontSize,
    this.fontFamily,
    this.fontWeight,
    this.textAlign,
    super.key,
  });
  String text;
  double? fontSize;
  TextAlign? textAlign;
  Color? color;
  String? fontFamily;
  FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return  Text(text!,
    textAlign: textAlign,
     style: TextStyle(
       fontSize: fontSize,
     fontFamily:fontFamily,
     color: color,
     fontWeight: fontWeight,
     ),);
  }
}

