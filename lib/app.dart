import 'package:flutter/material.dart';
import 'features/rose_day/rose_day_screen.dart';

class RoseDayApp extends StatelessWidget {
  const RoseDayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RoseDayScreen(),
    );
  }
}
