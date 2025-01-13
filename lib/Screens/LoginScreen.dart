import 'package:chat_app/Constants/constants.dart';
import 'package:chat_app/Screens/Widgets/Custom_Button.dart';
import 'package:chat_app/Screens/Widgets/Custom_Text.dart';
import 'package:chat_app/Screens/Widgets/Custom_Text_Field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Pcolor ,
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
              child: CustomText(text: 'LOGIN',color: Colors.white,fontSize: 23))
           ,const SizedBox(height: 15),
            CustomTextField(hintText: 'Email'),
            const SizedBox(height: 8),
            CustomTextField(hintText: 'Password'),
           const SizedBox(height: 25),
            CustomButton(),
           const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
           CustomText(color: Colors.white,fontSize: 15,text: 'don\'t have an account?'),
          CustomText(color:Scolor,fontSize: 15,text: '    Sign UP Now',fontWeight: FontWeight.bold,)


            ],)
          
            
          ]
        ),
      )
    );
  }
}
