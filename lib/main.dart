import 'package:flutter/material.dart';
import 'package:pepper_app/screens/eat_screens/menu-screen-1.dart';
import 'package:pepper_app/screens/eat_screens/menu-screen-2.dart';
import 'package:pepper_app/screens/splash-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuScreen1(),
    );
  }
}
