import 'package:flutter/material.dart';
import 'package:voda_insure/NavigationandRouting.dart';
import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimForms/ClaimFileUpload.dart';

import 'package:voda_insure/Screens/Splash/SplashScreen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: AppRoutes.routes,
      home: const SplashScreen(),
      // home: MotorFileUpload(),
    );
  }
}
