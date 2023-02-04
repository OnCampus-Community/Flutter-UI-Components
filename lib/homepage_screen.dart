import 'package:flutter/material.dart';

import 'components/components.dart';

class FlutterComponents extends StatelessWidget {
  const FlutterComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter UI Components"),
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
                onPressed: () {}),
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
                        return const CircularLoadingIndicator(
                          currentDotColor: Colors.blue,
                          defaultDotColor: Colors.red,
                          numDots: 10,
                         
                         
                        );
                      });
                })
          ],
        )),
      ),
    );
  }
}
