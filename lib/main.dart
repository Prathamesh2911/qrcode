import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'first.dart';
import 'second.dart';
import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';
// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Text(
            'QRCODE',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ))
        ],
      ),
      backgroundColor: Colors.black,
      nextScreen: Home(),
      splashIconSize: 350,
      duration: 3000,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.topToBottom,
      animationDuration: const Duration(seconds: 1),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.qr_code, size: 40, color: Colors.white),
              ),
              Tab(
                icon:
                    Icon(Icons.qr_code_scanner, size: 40, color: Colors.white),
              ),
            ],
          ),
          title: const Text(
            'QRCODE',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const TabBarView(
          children: [
            First(),
            Second(),
          ],
        ),
      ),
    );
  }
}
