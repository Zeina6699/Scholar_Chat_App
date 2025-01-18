
import 'package:chat_app/Constants/constants.dart';
import 'package:chat_app/Screens/Widgets/Custom_Button.dart';
import 'package:chat_app/Screens/Widgets/Custom_Text.dart';
import 'package:chat_app/Screens/Widgets/Custom_Text_Field.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatelessWidget {
 LoginScreen({super.key});

  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: CustomText(text: 'LOGIN',color: Colors.white,fontSize: 23))
           ,const SizedBox(height: 15),
            CustomTextField(onChanged: (data){email=data;}, hintText: 'Email'),
            const SizedBox(height: 8),
            CustomTextField(onChanged: (data){password=data;}, hintText: 'Password'),
           const SizedBox(height: 25),
            CustomButton(
              onTap: ()async{
          var auth= FirebaseAuth.instance;
          UserCredential user=   await auth.createUserWithEmailAndPassword(email: email!, password: password!);
          print(user.user!.displayName);},
              title: 'LOGIN',),
           const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
           CustomText(color: Colors.white,fontSize: 15,text: 'don\'t have an account?'),
          GestureDetector
          (onTap: (){
           Navigator.pushNamed(context, '/Sign');},
            child: CustomText(color:kScolor,fontSize: 15,text: '    Sign UP Now',fontWeight: FontWeight.bold,))


            ],)
          
            
          ]
        ),
      )
    );
  }
}
