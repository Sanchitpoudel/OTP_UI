// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'dart:async';
import 'const.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pinController = TextEditingController();

  String otp = '';
  void onTap() {
    setState(() {
      otp = pinController.text;
      Navigator.of(context).pushNamed('routeName')
    });
  }

  final defaultPinTheme = PinTheme(
    width: 68,
    height: 68,
    textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromARGB(255, 245, 245, 245),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromARGB(255, 53, 102, 143)),
      borderRadius: BorderRadius.circular(12),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 13, 13, 16),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //arrow
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  "lib/images/left.png",
                  color: Colors.white,
                  height: 34,
                ),
                SizedBox(
                  height: 15,
                ),
                //verification code
                Text('Verification code',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    )),
                SizedBox(
                  height: 10,
                ),
                //we have sent ....
                Text('We have sent the code verification to ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    )),
                SizedBox(
                  height: 10,
                ),
                //change your number
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "+9806620428",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Change your phone number?',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //otp box
                Pinput(
                  controller: pinController,
                  defaultPinTheme: defaultPinTheme,
                ),
                SizedBox(
                  height: 10,
                ),
                //resend
                Text(
                  'Resend code',
                  style: TextStyle(color: Colors.deepPurple),
                ),

                //buttons
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 21, 21, 112)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 40,
                    width: 140,
                    child: Center(
                        child: Text(
                      'Resend',
                      style: TextStyle(color: Colors.deepPurple),
                    )),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(8)),
                      height: 40,
                      width: 140,
                      child: Center(
                          child: Text(
                        'Confirm',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
