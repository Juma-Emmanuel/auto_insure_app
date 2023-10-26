import 'dart:async';
import 'package:flutter/material.dart';

import 'package:voda_insure/trial2.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacementNamed(context, '/login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropAnimation(
              myWidget: SizedBox(
                width: 120,
                height: 120,
                child: Image.asset('assets/voda_logo.png'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text('When We Empower you Thrive',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xFF726666),
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 0,
                    wordSpacing: 0,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
