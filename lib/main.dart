import 'package:flutter/material.dart';
import 'package:smg_work/gold.dart';
import 'package:smg_work/home_page.dart';
import 'package:smg_work/platinum.dart';
import 'package:smg_work/play_button.dart';
import 'package:smg_work/plus.dart';
import 'package:smg_work/tilt_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
