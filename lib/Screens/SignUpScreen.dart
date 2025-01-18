import 'package:chat_app/Constants/constants.dart';
import 'package:chat_app/Screens/Widgets/Custom_Button.dart';
import 'package:chat_app/Screens/Widgets/Custom_Text.dart';
import 'package:chat_app/Screens/Widgets/Custom_Text_Field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:kPcolor ,
      body:Padding(
       
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical:20),
        child: Column(
           mainAxisAlignment:MainAxisAlignment.start,
          children:[
            const SizedBox(height: 80),
            Image.asset('assets/images/s.png'),
           CustomText(color: Colors.white,fontFamily: 'pacifico',fontSize:32,text: 'Scholar Chat',),
          const SizedBox(height: 70),
            Align(alignment: Alignment.topLeft,
              child: CustomText(text: 'SIGNUP',color: Colors.white,fontSize: 23))
           ,const SizedBox(height: 15),
            CustomTextField(hintText: 'Email'),
            const SizedBox(height: 8),
            CustomTextField(hintText: 'Password'),
           const SizedBox(height:25),
            CustomButton(title: 'SIGN UP',),
           const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
           CustomText(color: Colors.white,fontSize: 15,text: 'already have an account?'),
          GestureDetector(
            onTap: (){Navigator.pop(context);},
            child: CustomText(color:kScolor,fontSize: 15,text: '    Login Now',fontWeight: FontWeight.bold,))


            ],)
          
            
          ]
        ),
      )
    );
  }
}
