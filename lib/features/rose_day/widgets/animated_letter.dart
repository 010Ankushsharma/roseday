import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedLetter extends StatelessWidget {
  final VoidCallback onFinished;

  const AnimatedLetter({super.key, required this.onFinished});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
            ),
            child: AnimatedTextKit(
              isRepeatingAnimation: false,
              onFinished: onFinished,
              animatedTexts: [
                TypewriterAnimatedText(
                  "To the one who makes my days brighter,\n\n"
                      "this isn’t just a rose.\n"
                  "It’s every smile you give me,\n"
                  "every calm you bring to my heart,\n"
                  "every reason I fall for you\n"
                  "a little more each day.\n\n"
                      "Happy Rose Day ❤️",
                  speed: const Duration(milliseconds: 65),
                  textAlign: TextAlign.center,
              textStyle: const TextStyle(
                color: Colors.white,
                height: 1.5,
                fontSize: 18,
              )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
