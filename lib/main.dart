import 'package:flutter/material.dart';

import 'home.dart';
import 'otp.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OtpPage(),
      routes: {
        '/HomePage':(context) => const HomePage()
      },
    );
  }
}