import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roseday/app.dart';

import 'features/rose_day/rose_day_controller.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (_) => RoseDayController(),
      child: const RoseDayApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rose Day',
      debugShowCheckedModeBanner: false,
      home: const RoseDayApp(),
    );
  }
}