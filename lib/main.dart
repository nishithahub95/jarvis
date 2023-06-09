import 'package:flutter/material.dart';
import 'package:jarvis/Screen/Onboarding/homeScreen.dart';
import 'package:jarvis/Screen/chat_response.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home:HomeScreen()
    );
  }
}

