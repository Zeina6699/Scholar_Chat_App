import 'package:chat_app/Constants/constants.dart';
import 'package:chat_app/Screens/Widgets/Custom_Chat_Bubble.dart';
import 'package:chat_app/Screens/Widgets/Custom_Text.dart';
import 'package:chat_app/Screens/Widgets/Custom_Text_Field.dart';
import 'package:flutter/material.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        automaticallyImplyLeading: false,
        title:Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(KLogo,height: 85),
           const  Text(' Chat'),
          
          ],
        ),

        centerTitle: true,
        backgroundColor: kPcolor,
      ),
      body:   Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child:ListView.builder(
                itemBuilder: (context,index){
                  
                  return  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CustomChatBubble(),
                  );
            
                }),
            
             
            ),
          ),
              Padding(
                padding: const EdgeInsets.all(16),
                child:TextField(
                  decoration: InputDecoration(
                    hintText: 'Send Message',
                    suffixIcon: Icon(Icons.send,color: kPcolor,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: kPcolor
                      )
                    )
                  ),
                
                )
              )

              
        ],
      ),
    );
  }
}
