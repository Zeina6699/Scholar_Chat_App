import 'package:chat_app/Constants/constants.dart';
import 'package:chat_app/Screens/Widgets/Custom_Button.dart';
import 'package:chat_app/Screens/Widgets/Custom_Text.dart';
import 'package:chat_app/Screens/Widgets/Custom_Text_Field.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});



  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  child: CustomText(text: 'SIGNUP',color: Colors.white,fontSize: 23))
               ,const SizedBox(height: 15),
                CustomTextFormField(onChanged: (data){email=data;},hintText: 'Email'),
                const SizedBox(height: 8),
                CustomTextFormField(onChanged: (data){password=data;},hintText: 'Password'),
               const SizedBox(height:25),
                CustomButton(
                  title: 'SIGN UP',
                  onTap:()async{
                    if(formKey.currentState!.validate()){
                      isLoading=true;
                      setState(() {});
                      try{
                        await RegisterUser();
                       showSnackBar(context,'Email created successfuly!');
                       Navigator.pushNamed(context,'/Chat');
                       }
                       
          on FirebaseAuthException
           catch(e){
              
              if (e.code == 'weak-password') {
              showSnackBar(context,'The password provided is too weak.');
                } else if (e.code == 'email-already-in-use') {
              showSnackBar(context, 'The account already exists for that email.');}} 
           catch(e){showSnackBar(context, 'There was an error');}     
          isLoading=false;
          setState(() {});
          }}),
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
          ),
        )
      ),
    );
  }



  Future<void> RegisterUser() async {
    UserCredential user=   await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email!, password: password!);
  }

}