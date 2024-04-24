import 'package:flutter/material.dart';
import 'package:voda_insure/Screens/Authentication/UserProfileScreen.dart';
import 'package:voda_insure/navigation_and_routing.dart';
import 'package:voda_insure/Screens/Splash/splash_screen.dart';

void main() {
  runApp(const VodaInsure());
}

class VodaInsure extends StatefulWidget {
  const VodaInsure({super.key});

  @override
  State<VodaInsure> createState() => _VodaInsureState();
}

class _VodaInsureState extends State<VodaInsure> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Voda Insure',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: AppRoutes.routes,
      home: const SplashScreen(),
    );
  }
}
