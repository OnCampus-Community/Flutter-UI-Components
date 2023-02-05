import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/screens/components_screens/BottonNavBar/bottom_nav_screen.dart';
import 'package:flutter_components/screens/components_screens/Buttons/button_screen.dart';

import '../../../components/components.dart';

class ComponentDisplayScreen extends StatelessWidget {
  const ComponentDisplayScreen({super.key});

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
                    "Bottom Nav Bar ",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const BottomNavBarScreen()),
                    );
                  }),
              const SizedBox(
                height: 50,
              ),
              FlutterButton1(
                  text: const Text(
                    "Bottons",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const BottonScreen()),
                    );
                  }),
              const SizedBox(
                height: 50,
              ),
              FlutterButton1(
                  text: const Text(
                    "Loading Indicators",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text("Welcome to UI Components"),
                            content: Text(
                                "Loading Indicators are currently in Development\n Feel free to Contribute"),
                          );
                        });
                  }),
            ],
          ),
        )),
      ),
    );
  }
}
