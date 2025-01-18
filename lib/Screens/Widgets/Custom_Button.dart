
import 'package:chat_app/Constants/constants.dart';
import 'package:chat_app/Screens/Widgets/Custom_Text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({
    required this.title,
    this.onTap,
    super.key,
  });
  String title;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),
      height: 60,width:double.infinity,
         child: Center(child:CustomText(color: kPcolor,fontWeight: FontWeight.bold,text:title,fontSize: 15,))),
    );
  }
}