import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Login_SignUp/login_signup_export.dart';

import '../components/components.dart';

class ScreenDisplayScreen extends StatelessWidget {
  const ScreenDisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 165, 201, 201),
      appBar: AppBar(
        title: const Text("Flutter UI Components"),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   FlutterButton1(
                  text: const Text(
                    "Login/SignUp Screen -Dark",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => WelcomeScreen()),
                    );
                  }),
              const SizedBox(
                height: 50,
              ),
                ]),
          ),
        ),
      ),
    );
  }
}
