import 'package:flutter/material.dart';

import 'homepage_screen.dart';

void main() {
  runApp(const TheLocalDev());
}

class TheLocalDev extends StatelessWidget {
  const TheLocalDev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(),
      ),
      home: const FlutterComponents(),
    );
  }
}
