import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/screens/components_display_screen.dart';
import 'package:flutter_components/screens/screens_display_page.dart';

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
                          builder: (context) => const ComponentDisplayScreen()),
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
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const ScreenDisplayScreen()),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
