import 'package:chat_app/Screens/ChatScreen.dart';
import 'package:chat_app/Screens/LoginScreen.dart';
import 'package:chat_app/Screens/SignUpScreen.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const SchoolarChatApp());
}

class SchoolarChatApp extends StatelessWidget {
  const SchoolarChatApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        '/Login':(context)=> LoginScreen(),
        '/Sign':(context)=> SignUpScreen(),
        '/Chat':(context)=>Chatscreen(),
      },
      initialRoute: '/Login'
     , debugShowCheckedModeBanner: false,
    /*  home:LoginScreen() صار هوم اسمها انيشيال راوت
      )*/);}}
     