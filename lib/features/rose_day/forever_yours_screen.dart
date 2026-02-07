import 'dart:ui';
import 'package:flutter/material.dart';

class ForeverYoursScreen extends StatefulWidget {
  const ForeverYoursScreen({super.key});

  @override
  State<ForeverYoursScreen> createState() => _ForeverYoursScreenState();
}

class _ForeverYoursScreenState extends State<ForeverYoursScreen> {
  bool _visible = false;

  @override
  void initState() {
    super.initState();

    // Delay to allow smooth fade-in
    Future.delayed(const Duration(milliseconds: 400), () {
      setState(() {
        _visible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🌹 Background (reuse rose image)
          Positioned.fill(
            child: Image.asset(
              'assets/image/rose2.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // 🌫 Soft overlay
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.6),
            ),
          ),

          // 💖 Content
          Center(
            child: AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "Forever Yours",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      "Not just today.\nNot just tomorrow.\nAlways.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        height: 1.6,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 🔙 Close / Back
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.close,
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
