
import 'package:chat_app/Constants/constants.dart';
import 'package:chat_app/Screens/Widgets/Custom_Text.dart';
import 'package:flutter/material.dart';

class CustomChatBubble extends StatelessWidget {
  const CustomChatBubble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding:const  EdgeInsets.only(left:18,top: 20,bottom: 20,right: 18),
       // alignment: Alignment.centerLeft,
       // width: 200,
            //   height:70,
              
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                   topLeft: Radius.circular(25),
                   topRight: Radius.circular(25),
                ),
                color:kPcolor,
               
              ),
              child:CustomText(text: 'Hi i\'m a new user',color: Colors.white,fontSize:18),
            ),
    );
  }
}