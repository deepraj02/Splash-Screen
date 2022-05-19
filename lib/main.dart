// ignore_for_file: avoid_unnecessary_containers

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Container(
          child: Image.asset(
            "assets/sp2.jpg",
            fit: BoxFit.fill,
          ),
        ),
        nextScreen: const HomeScreen(),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: 1080,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "HELLO",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
