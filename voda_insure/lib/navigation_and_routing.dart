import 'package:flutter/material.dart';
import 'package:voda_insure/Screens/Authentication/edit_profile_screen.dart';
import 'package:voda_insure/Screens/Authentication/email_verification_screen.dart';
import 'package:voda_insure/Screens/Authentication/login_screen.dart';
import 'package:voda_insure/Screens/Authentication/password_reset.dart';
import 'package:voda_insure/Screens/Authentication/phone_verification.dart';
import 'package:voda_insure/Screens/Authentication/registration_select.dart';
import 'package:voda_insure/Screens/Authentication/user_profile.dart';
import 'package:voda_insure/Screens/Authentication/verification_code.dart';
import 'package:voda_insure/Screens/Authentication/verification.dart';
import 'package:voda_insure/Screens/Claims/MedicalClaims/ClaimForms/claim_file_upload.dart';
import 'package:voda_insure/Screens/Claims/MedicalClaims/ClaimForms/make_claim.dart';
import 'package:voda_insure/Screens/Claims/MedicalClaims/ClaimReports/claim_details_report.dart';

import 'package:voda_insure/Screens/Claims/MedicalClaims/ClaimReports/claims_documents.dart';
import 'package:voda_insure/Screens/Claims/MedicalClaims/ClaimReports/claims_history.dart';
import 'package:voda_insure/Screens/Claims/MedicalClaims/ClaimReports/claims_upload.dart';
import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimForms/claim_file_upload.dart';
import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimForms/claims_cover_lists.dart';

import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimReports/claim_detail_report.dart';

import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimReports/claim_documents.dart';

import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimReports/claim_history.dart';
import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimReports/claim_images.dart';
import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimReports/claim_upload_screen.dart';
import 'package:voda_insure/Screens/Home/article_web_view.dart';
import 'package:voda_insure/Screens/Home/home_screen.dart';
import 'package:voda_insure/Screens/MotorInsurance/Agreements/faqs.dart';
import 'package:voda_insure/Screens/MotorInsurance/Agreements/motor_privacy_policy.dart';
import 'package:voda_insure/Screens/MotorInsurance/Agreements/motor_terms_conditions_screen.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorForms/register_vehicle_screen.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorReports/cover_vehicles_list.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorReports/report_vehicles_list.dart';

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
    '/registrationselect': (context) => const RegistrationSelect(),
    '/homescreen': (context) => HomeScreen(),
    '/articlewebview': (context) => const ArticleWebView(),
    '/registervehicle': (context) => const RegisterVehicleScreen(),
    '/covervehiclelist': (context) => const CoverVehiclesList(),
    '/motortermsandconditions': (context) => const MotorTermsandConditions(),
    '/motorprivacypolicy': (context) => const MotorPrivacyPolicy(),
    '/faqs': (context) => const Faqs(),
    '/vehicleslist': (context) => const ReportVehiclesList(),
    '/motorclaimshistory': (context) => const MotorClaimsHistory(),
    '/claimscoverlist': (context) => const ClaimsCoversList(),
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
