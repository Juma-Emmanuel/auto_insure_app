import 'package:flutter/material.dart';
import 'package:voda_insure/Screens/Authentication/EditProfileScreen.dart';
import 'package:voda_insure/Screens/Authentication/EmailVerificationScreen.dart';
import 'package:voda_insure/Screens/Authentication/LoginScreen.dart';
import 'package:voda_insure/Screens/Authentication/PasswordResetScreen.dart';
import 'package:voda_insure/Screens/Authentication/PhoneVerificationScreen.dart';
import 'package:voda_insure/Screens/Authentication/RegistrationSelect.dart';
import 'package:voda_insure/Screens/Authentication/UserProfileScreen.dart';
import 'package:voda_insure/Screens/Authentication/VerificationCodeScreen.dart';
import 'package:voda_insure/Screens/Authentication/VerificationScreen.dart';
import 'package:voda_insure/Screens/Claims/MedicalClaims/ClaimForms/ClaimFileUpload.dart';
import 'package:voda_insure/Screens/Claims/MedicalClaims/ClaimForms/MakeClaimScreen.dart';
import 'package:voda_insure/Screens/Claims/MedicalClaims/ClaimReports/ClaimDetailsReport.dart';

import 'package:voda_insure/Screens/Claims/MedicalClaims/ClaimReports/ClaimsDocumentsScreen.dart';
import 'package:voda_insure/Screens/Claims/MedicalClaims/ClaimReports/ClaimsHistoryScreen.dart';
import 'package:voda_insure/Screens/Claims/MedicalClaims/ClaimReports/ClaimsUploadScreen.dart';
import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimForms/ClaimFileUpload.dart';
import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimForms/MakeClaimScreen.dart';
import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimReports/ClaimDetailsReport.dart';

import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimReports/ClaimDocumentsScreen.dart';

import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimReports/ClaimsHistoryScreen.dart';
import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimReports/ClaimsImagesScreen.dart';
import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimReports/ClaimsUploadsScreen.dart';
import 'package:voda_insure/Screens/Home/ArticleWebView.dart';
import 'package:voda_insure/Screens/Home/HomeScreen.dart';
import 'package:voda_insure/Screens/MotorInsurance/Agreements/Faqs.dart';
import 'package:voda_insure/Screens/MotorInsurance/Agreements/MotorPrivacyPolicyScreen.dart';
import 'package:voda_insure/Screens/MotorInsurance/Agreements/MotorTermsAndConditionsScreen.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorForms/RegisterVehicleScreen.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorReports/CoverVehiclesList.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorReports/MotorVehiclesMotorcyclesReportScreen.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorReports/MycoverReport.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorReports/ReportVehiclesList.dart';

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
    '/registrationselect': (context) => RegistrationSelect(),
    '/homescreen': (context) => HomeScreen(),
    '/articlewebview': (context) => const ArticleWebView(),
    '/registervehicle': (context) => const RegisterVehicleScreen(),
    '/covervehiclelist': (context) => const CoverVehiclesList(),
    '/motortermsandconditions': (context) => const MotorTermsandConditions(),
    '/motorprivacypolicy': (context) => const MotorPrivacyPolicy(),
    '/faqs': (context) => const Faqs(),
    '/vehicleslist': (context) => const ReportVehiclesList(),
    '/makemotorclaim': (context) => const MakeMotorClaimScreen(),
    '/motorclaimshistory': (context) => const MotorClaimsHistory(),
    '/motorclaimdetailsreport': (context) => const MotorClaimDetailsReport(),
    '/motorclaimuploadsreport': (context) => const MotorClaimsUploadReport(),
    '/makemedicalclaim': (context) => const MakeMedicalClaimScreen(),
    '/medicalclaimshistory': (context) => const MedicalClaimsHistory(),
    '/medicalclaimdetailsreport': (context) =>
        const MedicalClaimDetailsReport(),
    '/medicalclaimuploadsreport': (context) =>
        const MedicalClaimsUploadReport(),
    '/motorclaimimagesscreen': (context) => const MotorClaimsImagesScreen(),
    '/motorclaimdocumentsscreen': (context) =>
        const MotorClaimsDocumentsScreen(),
    '/medicalclaimdocumentsscreen': (context) =>
        const MedicalClaimsDocumentsScreen(),
    '/medicalfileupload': (context) => const MedicalFileUpload(),
    '/motorfileupload': (context) => const MotorFileUpload(),
  };
}
