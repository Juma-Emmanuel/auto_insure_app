import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class MotorPrivacyPolicy extends StatefulWidget {
  const MotorPrivacyPolicy({super.key});

  @override
  State<MotorPrivacyPolicy> createState() => _MotorPrivacyPolicyState();
}

class _MotorPrivacyPolicyState extends State<MotorPrivacyPolicy> {
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
              'Privacy Policy',
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
                  '1. INFORMATION WE COLLECT',
                  style: textStyle.bbodyMediumGrey,
                ),
                Text(
                  'We may collect the following types of personal information:',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '1. Contact information, including name, address, phone number, and email address.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '2. Vehicle information, such as make, model, year, and Vehicle Identification Number (VIN).',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '3. Vehicle information, such as make, model, year, and Vehicle Identification Number (VIN).',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '4. Insurance history and claims information.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '5. Payment information for premium processing.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '2. HOW WE USE YOUR INFORMATION',
                  style: textStyle.bbodyMediumGrey,
                ),
                Text(
                  'We may use your personal information for the following purposes:',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '1. Evaluating your application for motor insurance coverage.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '2. Processing and managing your insurance policy.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '3. Communicating with you about your policy, including updates, renewals, and claims.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '4. Complying with legal and regulatory requirements.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '3. INFORMATION SHARING',
                  style: textStyle.bbodyMediumGrey,
                ),
                Text(
                  'We do not sell, trade, or rent your personal information to third parties. We may share your information with:',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '1. Insurance underwriters and providers for policy processing.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '2. Law enforcement or regulatory authorities as required by law.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '3: Service providers who assist us in operating our business.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '4. DATA SECURITY',
                  style: textStyle.bbodyMediumGrey,
                ),
                Text(
                  'We employ industry-standard security measures to protect your personal information from unauthorized access and disclosure. However, no data transmission over the internet can be guaranteed to be 100% secure.',
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
