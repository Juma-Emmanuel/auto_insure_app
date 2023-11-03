import 'package:flutter/material.dart';
import 'package:voda_insure/NavigationandRouting.dart';
import 'package:voda_insure/Screens/Authentication/EditProfileScreen.dart';
import 'package:voda_insure/Screens/Authentication/EmailVerificationScreen.dart';
import 'package:voda_insure/Screens/Authentication/PasswordResetScreen.dart';
import 'package:voda_insure/Screens/Authentication/PhoneVerificationScreen.dart';
import 'package:voda_insure/Screens/Authentication/RegistrationScreen.dart';
import 'package:voda_insure/Screens/Authentication/UserProfileScreen.dart';
import 'package:voda_insure/Screens/Authentication/VerificationCodeScreen.dart';
import 'package:voda_insure/Screens/Authentication/VerificationScreen.dart';
import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimForms/MakeClaimScreen.dart';
import 'package:voda_insure/Screens/Home/ArticleWebView.dart';

import 'package:voda_insure/Screens/Home/HomeScreen.dart';
import 'package:voda_insure/Screens/MotorInsurance/Agreements/Faqs.dart';
import 'package:voda_insure/Screens/MotorInsurance/Agreements/MotorPrivacyPolicyScreen.dart';
import 'package:voda_insure/Screens/MotorInsurance/Agreements/MotorTermsAndConditionsScreen.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorForms/RegisterVehicleScreen.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorReports/MotorVehiclesMotorcyclesReportScreen.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorReports/MycoverReport.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorReports/VehiclesList.dart';
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
      // home: HomeScreen(),
    );
  }
}
