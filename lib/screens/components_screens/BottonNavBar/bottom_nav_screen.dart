import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/components.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({super.key});

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
                    "Bottom Nav Bar 1",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const BottomNavBar1()),
                    );
                  }),
              const SizedBox(
                height: 50,
              ),
              FlutterButton1(
                  text: const Text(
                    "Bottom Nav Bar 2",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const BottomNavBar2()),
                    );
                  }),
              const SizedBox(
                height: 50,
              ),
              FlutterButton1(
                  text: const Text(
                    "Bottom Nav Bar 3",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const BottomNavBar3()),
                    );
                  }),
              const SizedBox(
                height: 50,
              ),
              FlutterButton1(
                  text: const Text(
                    "Bottom Nav Bar 4",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const BottomNavBar4()),
                    );
                  }),
              const SizedBox(
                height: 50,
              ),
              FlutterButton1(
                  text: const Text(
                    "Bottom Nav Bar 5",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => BottomNavBar5()),
                    );
                  }),
            ],
          ),
        )),
      ),
    );
  }
}
