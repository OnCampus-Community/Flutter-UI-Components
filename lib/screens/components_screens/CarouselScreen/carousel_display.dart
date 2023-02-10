import 'package:flutter/material.dart';
import 'package:flutter_components/components/components.dart';

class CarouselDisplay extends StatelessWidget {
  const CarouselDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: const CustomCarousel1(),
    );
  }
}
