import 'package:chat_app/Constants/constants.dart';
import 'package:chat_app/Screens/Widgets/Custom_Button.dart';
import 'package:chat_app/Screens/Widgets/Custom_Text.dart';
import 'package:chat_app/Screens/Widgets/Custom_Text_Field.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});



  @override
  State<LoginScreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<LoginScreen> {
    bool isLoading=false;
  GlobalKey<FormState>formKey=GlobalKey();
  String? email;
  String? password;


  @override
  Widget build(BuildContext context) {
  
    return  ModalProgressHUD(
      color: Colors.red,
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor:kPcolor ,
        body:Form(
        key: formKey,
          child: Padding(
           
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical:20),
            child: Column(
               mainAxisAlignment:MainAxisAlignment.start,
              children:[
                const SizedBox(height: 80),
                Image.asset(KLogo),
               CustomText(color: Colors.white,fontFamily: 'pacifico',fontSize:32,text: 'Scholar Chat',),
              const SizedBox(height: 70),
                Align(alignment: Alignment.topLeft,
                  child: CustomText(text: 'LOGIN',color: Colors.white,fontSize: 23))
               ,const SizedBox(height: 15),
                CustomTextFormField(onChanged: (data){email=data;},hintText: 'Email'),
                const SizedBox(height: 8),
                CustomTextFormField(obscured: true, onChanged: (data){password=data;},hintText: 'Password'),
               const SizedBox(height:25),
                CustomButton(
                  title: 'LOG IN',
                  onTap:()async{
                    if(formKey.currentState!.validate()){
                      isLoading=true;
                      setState(() {});
                      try{
                        await LoginUser();
                      // showSnackBar(context,'Email created successfuly!');
                       Navigator.pushNamed(context,'/Chat',arguments: email);
                       }
                       
          on FirebaseAuthException
           catch(e){
              
              if (e.code == 'user-not-found') {
              showSnackBar(context,'No user found for that email.');
                } else if (e.code == 'wrong-password') {
              showSnackBar(context, 'Wrong password provided for that user.');}} 
           catch(e){showSnackBar(context, 'There was an error');}     
          isLoading=false;
          setState(() {});
          }}),
               const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
               CustomText(color: Colors.white,fontSize: 15,text: 'don\'t have an account'),
              GestureDetector(
                onTap: (){Navigator.pushNamed(context,'/Sign');},
                child: CustomText(color:kScolor,fontSize: 15,text: '    Sign up Now',fontWeight: FontWeight.bold,))
                
                
                ],)
              
                
              ]
            ),
          ),
        )
      ),
    );
  }



  Future<void> LoginUser() async {
    UserCredential user=await FirebaseAuth.instance.signInWithEmailAndPassword(email: email!, password: password!);
  }
}  


