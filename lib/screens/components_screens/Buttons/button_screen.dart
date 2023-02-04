import 'package:flutter/material.dart';

import '../../../components/components.dart';

class BottonScreen extends StatelessWidget {
  const BottonScreen({super.key});

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
                    "Botton 1",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {}),
              const SizedBox(
                height: 50,
              ),
              ImageButton(
                  onPressed: () {},
                  iconImage: Image.network(
                      "https://avatars.githubusercontent.com/u/63138398?v=4"),
                  text: const Text("Heyy"))
            ],
          ),
        )),
      ),
    );
  }
}
