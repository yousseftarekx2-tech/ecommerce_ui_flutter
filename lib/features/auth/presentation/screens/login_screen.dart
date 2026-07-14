import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _MyAppState();
}

class _MyAppState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //   appBar: AppBar(
    // backgroundColor: Color(0xFFF9F9F9),
    //   ),
    extendBodyBehindAppBar: true,
    backgroundColor: const Color(0xFFF9F9F9),
    body: Container(
        margin: EdgeInsets.only(left: 16, right: 16 , top: 24 , bottom: 10),
      child: Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 44,),
        Text(
          "Welcome Back!",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold
          ),
          ),

          // Text(
          // "Enter your email to start shopping and get awesome deals today!",
          // style: TextStyle(
          //   fontSize: 15,
          //   color: Colors.grey,
          //   fontWeight: FontWeight.bold
          // ),
          // ),
      ],
    ),
      
    )
    );
  }
}
