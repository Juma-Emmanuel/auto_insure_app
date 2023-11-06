import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class TermsandConditions extends StatefulWidget {
  const TermsandConditions({super.key});

  @override
  State<TermsandConditions> createState() => _TermsandConditionsState();
}

class _TermsandConditionsState extends State<TermsandConditions> {
  Textstyle textStyle = Textstyle();
  Appstyle appStyle = Appstyle();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0XFF726666),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            width: 350,
            height: 48,
            child: appStyle.logo(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              'Terms and conditions',
              style: textStyle.bodyLarge,
            ),
          ),
          separator,
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, left: 14, right: 14, bottom: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1. Acceptance of Terms and Conditions',
                  style: textStyle.bbodyMediumGrey,
                ),
                Text(
                  'By accessing or using the Vodainsure mobile application, you agreee to comply with and be bound to this Terms and Conditions. If you do not Agree to this Terms And Conditions please do not use the Application.  ',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '2. Description of the Service',
                  style: textStyle.bbodyMediumGrey,
                ),
                Text(
                  'VodaInsure provides an online platform that allows users to [describe services provided, eg.., purchase insurance policies, file claims, receive quotes etc.]',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '3. User Registration',
                  style: textStyle.bbodyMediumGrey,
                ),
                Text(
                  '1. To use certain feautures of the Application, you may be required to register for an account. You agree  to provide accurate and complete information during the regisration process and to keep your account information up-to-date.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '2. You are responsible for maintaining the confidentiality of your account credentials and for all acitivities that occur under your account. Notify us immediately of any unauthorized use of account.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '4. Privacy policy',
                  style: textStyle.bbodyMediumGrey,
                ),
                Text(
                  'Your use of the Application is also governed by our Private Policy.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '5. User Conduct.',
                  style: textStyle.bbodyMediumGrey,
                ),
                Text(
                  'a. You agree to use the Application for the lawful purposes only and not to engage in any conduct that may :',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '1. Violate any applicable laws or regulations',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '2. Infringe upon the rights of others.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '3. Disrupt the functioning of the Application',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  'b. You are prohibited from:',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '1. Transmitting or posting any content that is offensive , harmful, or violate the rights of others.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '2. Attempting to gain unauthorized access to the Application or its related Systems',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '6. Intellectual Property',
                  style: textStyle.bbodyMediumGrey,
                ),
                Text(
                  '1. All content, trademarks, and other intellectuall property on the Application are owned or licensed by VodaInsure .You  are granted a limited , non-exclusive , non-transferable license to use the  Application solely for its intended Purpose',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '2. You may not reproduce, distribute, modify, or create derivative works from any content on the Application without prior written consent from VodaInsure ',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '7. Limitation of Liability',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  'VodaInsure is not liable for any damages, including but not limited to direct, indirect, incidental , consequential, or punitive damages arising out of your use or inability to use the Application',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '8. Termination',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  'VodaInsure reserves the right to terminate or suspend your account and access to the Application at its sole discretion, with or without notice, for any reason, including a breach of these Terms and Conditions.  ',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '9. Governing Law',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  'These Terms and Conditions are governed by and construed in accordance with the laws of [jurisdiction]. Any disputes arising from or relating to these Terms and Conditions will be subject to the exclusive jurisdiction of the courts in [jurisdiction].',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '10. Changes to Terms and Conditions ',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  'VodaInsure reserves the right to modify these Terms and Conditions at any time. Updated versions will be posted on the Application, and it is your responsibility to review them periodically.',
                  style: textStyle.bbodySmallGrey,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
