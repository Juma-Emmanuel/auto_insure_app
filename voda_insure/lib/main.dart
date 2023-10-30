import 'package:flutter/material.dart';
import 'package:voda_insure/Screens/Authentication/EditProfileScreen.dart';
import 'package:voda_insure/Screens/Authentication/EmailVerificationScreen.dart';
import 'package:voda_insure/Screens/Authentication/PasswordResetScreen.dart';
import 'package:voda_insure/Screens/Authentication/PhoneVerificationScreen.dart';
import 'package:voda_insure/Screens/Authentication/RegistrationScreen.dart';
import 'package:voda_insure/Screens/Authentication/UserProfileScreen.dart';
import 'package:voda_insure/Screens/Authentication/VerificationCodeScreen.dart';
import 'package:voda_insure/Screens/Authentication/VerificationScreen.dart';

import 'package:voda_insure/Screens/Home/HomeScreen.dart';
import 'Screens/Authentication/LoginScreen.dart';

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
      initialRoute: '/',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/verificationscreen': (context) => const VerificationScreen(),
        '/emailverificationscreen': (context) =>
            const EmailVerificationScreen(),
        '/phoneverificationscreen': (context) =>
            const PhoneVerificationScreen(),
        '/forgotpasswordscreen': (context) => const VerificationScreen(),
        '/verificationcodescreen': (context) => const VerificationCodeScreen(),
        '/passwordresetscreen': (context) => const PasswordResetScreen(),
        '/userprofilescreen': (context) => const UserProfileScreen(),
        '/editprofilescreen': (context) => const EditProfileScreen(),
        '/registration': (context) => const RegistrationScreen(),
        '/homescreen': (context) => HomeScreen(),
      },
      // home: const SplashScreen(),
      home: HomeScreen(),
    );
  }
}
