import 'package:flutter/material.dart';

import 'Screens/Home/HomeScreen.dart';

void main() {
  runApp(const VodaInsure());
}

class VodaInsure extends StatelessWidget {
  const VodaInsure({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(title: 'Flutter Demo Home Page'),
    );
  }
}
