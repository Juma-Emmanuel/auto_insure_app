import 'package:flutter/material.dart';
import 'package:voda_insure/Screens/Authentication/EditProfileScreen.dart';
import 'package:voda_insure/Screens/Authentication/EmailVerificationScreen.dart';
import 'package:voda_insure/Screens/Authentication/LoginScreen.dart';
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

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/login': (context) => const LoginScreen(),
    '/verificationscreen': (context) => const VerificationScreen(),
    '/emailverificationscreen': (context) => const EmailVerificationScreen(),
    '/phoneverificationscreen': (context) => const PhoneVerificationScreen(),
    '/forgotpasswordscreen': (context) => const VerificationScreen(),
    '/verificationcodescreen': (context) => const VerificationCodeScreen(),
    '/passwordresetscreen': (context) => const PasswordResetScreen(),
    '/userprofilescreen': (context) => const UserProfileScreen(),
    '/editprofilescreen': (context) => const EditProfileScreen(),
    '/registration': (context) => const RegistrationScreen(),
    '/homescreen': (context) => HomeScreen(),
    '/articlewebview': (context) => const ArticleWebView(),
    '/registervehicle': (context) => const RegisterVehicleScreen(),
    '/mycoverreport': (context) => const MycoverReport(),
    '/motorvehiclemotorcyclereport': (context) =>
        const MotorVehiclesMotorcyclesReportScreen(),
    '/motortermsandconditions': (context) => const MotorTermsandConditions(),
    '/motorprivacypolicy': (context) => const MotorPrivacyPolicy(),
    '/faqs': (context) => const Faqs(),
    '/vehicleslist': (context) => const VehiclesList(),
    '/makemotorclaim': (context) => const MakeMotorClaimScreen(),
  };
}
