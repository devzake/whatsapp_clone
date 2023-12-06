import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/Home_screen.dart';
import 'package:whatsapp_clone/utils/colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
    );
  }
}
