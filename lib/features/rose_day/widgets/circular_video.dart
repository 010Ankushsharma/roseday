import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CircularVideo extends StatefulWidget {
  const CircularVideo({super.key});

  @override
  State<CircularVideo> createState() => _CircularVideoState();
}

class _CircularVideoState extends State<CircularVideo> {
  late VideoPlayerController _controller;
  bool _visible = false;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
      'assets/image',
    )..initialize().then((_) {
      _controller
        ..setLooping(true)
        ..setVolume(0.0) // 🔇 muted
        ..play();

      // Trigger fade-in AFTER video is ready
      setState(() {
        _visible = true;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: const Duration(seconds: 2), // 🌸 gentle fade
      curve: Curves.easeInOut,
      child: ClipOval(
        child: SizedBox(
          height: 350,
          width: 300,
          child: _controller.value.isInitialized
              ? VideoPlayer(_controller)
              : const SizedBox(),
        ),
      ),
    );
  }
}
