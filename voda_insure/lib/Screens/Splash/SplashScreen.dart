import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 207,
              height: 244,
              child: Image.asset('assets/voda_logo.png'),
            ),
            const Text('When We Empower you Thrive',
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF726666),
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 0,
                  wordSpacing: 0,
                )),
          ],
        ),
      ),
    );
  }
}
