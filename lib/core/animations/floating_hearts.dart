import 'dart:math';
import 'package:flutter/material.dart';

class FloatingHearts extends StatefulWidget {
  const FloatingHearts({super.key});

  @override
  State<FloatingHearts> createState() => _FloatingHeartsState();
}

class _FloatingHeartsState extends State<FloatingHearts>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Random _random = Random();

  static const int heartCount = 6; // 🌸 very subtle

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 22), // 🐢 slow rise
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return IgnorePointer(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, __) {
          return Stack(
            children: List.generate(heartCount, (index) {
              final progress =
                  (_controller.value + index / heartCount) % 1.0;

              // Horizontal position (fixed per heart)
              final startX = size.width *
                  ((index + 1) / (heartCount + 1));

              // Vertical movement (bottom → middle)
              final yPosition =
                  size.height - (size.height * 0.65 * progress);

              // Gentle side sway
              final drift = sin(progress * pi * 2) * 12;

              // Fade out in the middle
              final opacity = progress < 0.6
                  ? progress / 0.6
                  : (1 - progress) / 0.4;

              return Positioned(
                left: startX + drift,
                top: yPosition,
                child: Opacity(
                  opacity: opacity.clamp(0.0, 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.redAccent.withOpacity(0.6),
                          blurRadius: 12,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.favorite,
                      size: 30, // 💫 small & elegant
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
