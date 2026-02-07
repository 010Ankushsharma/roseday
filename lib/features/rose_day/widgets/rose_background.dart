import 'package:flutter/material.dart';

class RoseBackground extends StatelessWidget {
  const RoseBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        'assets/image/rose.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
