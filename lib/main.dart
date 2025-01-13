import 'package:chat_app/Screens/SignUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/Screens/LoginScreen.dart';

void main() {
  runApp(const SchoolarChatApp());
}

class SchoolarChatApp extends StatelessWidget {
  const SchoolarChatApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        'Login':(context)=>LoginScreen(),
        'Sign':(context)=>SignUpScreen()
      },
      initialRoute: '/Login'
     , debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:LoginScreen()
      ));}}
     