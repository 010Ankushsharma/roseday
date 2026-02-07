import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:roseday/features/rose_day/widgets/circular_video.dart';

import 'forever_yours_screen.dart';

class SurpriseRevealScreen extends StatelessWidget {
  const SurpriseRevealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🌹 Background Rose Image
          Positioned.fill(
            child: Image.asset(
              'assets/image/rose2.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // 🌫 Soft dark overlay
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.45),
            ),
          ),

          // 💖 Content
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // 📸 GF Photo Placeholder
                /*Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white.withOpacity(0.8),
                      width: 2,
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/image/khushi.mp4'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),*/
                const CircularVideo(),

                const SizedBox(height: 24),

                // ❤️ Special Text
                const Text(
                  "Special ❤️",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 12),

                // 💌 Romantic Line
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    "You are the most beautiful part of my life.\n"
                        "This rose is just a small reflection of what I feel for you.\n"
                    "MIYUU",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ),

                const SizedBox(height: 32),

                // 💖 Button → Forever Yours Screen
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ForeverYoursScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.18),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      "Forever Yours 💖",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // 🔙 Back Button
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
