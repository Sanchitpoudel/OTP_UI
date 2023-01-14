// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('OTP'),
        elevation: 0,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          GestureDetector(child: Icon(Icons.logout)),
          SizedBox(
            width: 20,
          )
        ],
      ),
      drawer: const Drawer(),
      body: const Center(child: Text('Welcome to homepage of this app')),
    );
  }
}
