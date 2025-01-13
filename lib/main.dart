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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:LoginScreen()
      ));}}
     