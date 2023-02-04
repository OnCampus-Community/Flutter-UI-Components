import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/screens/display_screen.dart';

import 'components/components.dart';

class FlutterComponents extends StatelessWidget {
  const FlutterComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text("Flutter UI Components"),
        backgroundColor: Colors.amber[50],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterButton1(
                  text: const Text(
                    "Components",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const DisplayScreen()),
                    );
                  }),
              const SizedBox(
                height: 100,
              ),
              FlutterButton1(
                  text: const Text(
                    "Screens",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text("Welcome to UI Components"),
                            content: Text(
                                "Screens are currently in Development\n Feel free to Contribute"),
                          );
                        });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
