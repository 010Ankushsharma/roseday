import 'dart:ui';
import 'package:flutter/material.dart';

class SurpriseButton extends StatelessWidget {
  final VoidCallback onTap;

  const SurpriseButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 28,
              vertical: 14,
            ),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.35),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Text(
              "Tap for a Surprise 🎁",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
