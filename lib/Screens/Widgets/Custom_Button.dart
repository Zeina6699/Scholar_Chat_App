
import 'package:chat_app/Constants/constants.dart';
import 'package:chat_app/Screens/Widgets/Custom_Text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),
    height: 60,width:double.infinity,
       child: Center(child:CustomText(color: Pcolor,fontWeight: FontWeight.bold,text: 'LOGIN',fontSize: 15,)));
  }
}