import 'package:flutter/material.dart';
import 'package:voda_insure/Screens/Splash/SplashScreen.dart';

import 'Screens/Authentication/LoginScreen.dart';
import 'Screens/Home/HomeScreen.dart';

void main() {
  runApp(const VodaInsure());
}

class VodaInsure extends StatefulWidget {
  const VodaInsure({super.key});

  @override
  State<VodaInsure> createState() => _VodaInsureState();
}

class _VodaInsureState extends State<VodaInsure> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: SplashScreen(),
      home: LoginScreen(),
    );
  }
}
