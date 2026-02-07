import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roseday/features/rose_day/surprise_reveal_screen.dart';

import '../../core/animations/floating_hearts.dart';
import '../../core/audio/audio_service.dart';
import 'rose_day_controller.dart';
import 'widgets/animated_letter.dart';
import 'widgets/rose_background.dart';
import 'widgets/surprise_button.dart';

class RoseDayScreen extends StatefulWidget {
  const RoseDayScreen({super.key});

  @override
  State<RoseDayScreen> createState() => _RoseDayScreenState();
}

class _RoseDayScreenState extends State<RoseDayScreen> {
  final AudioService _audioService = AudioService();

  @override
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _audioService.start();

      Future.delayed(const Duration(seconds: 1), () {
        context.read<RoseDayController>().startLetter();
      });
    });
  }


  @override
  void dispose() {
    _audioService.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<RoseDayController>();

    return Scaffold(
      body: Stack(
        children: [
          const RoseBackground(),

          const FloatingHearts(),

          if (controller.showLetter)
            Center(
              child: AnimatedLetter(
                onFinished: controller.showSurpriseButton,
              ),
            ),

          if (controller.showButton)
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: SurpriseButton(onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SurpriseRevealScreen(),
                    ),
                  );
                },
                ),
              ),
            ),

        ],
      ),
    );
  }
}
