import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
const kPcolor= Color(0xff314F6A);
const  kScolor= Color(0xffC7EDE6);
const KLogo='assets/images/s.png';



//Methods

 void showSnackBar(BuildContext context,String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(message)));
  }

  
  Future<void> RegisterUserr() async {
    var email;
    var password;
    UserCredential user=   await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email!, password: password!);
  }

    Future<void> LoginUserr() async {
    var email;
    var password;
    UserCredential user=   await FirebaseAuth.instance.signInWithEmailAndPassword(email: email!, password: password!);
  }

