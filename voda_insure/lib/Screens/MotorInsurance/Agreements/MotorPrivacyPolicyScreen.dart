import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class MotorPrivacyPolicy extends StatefulWidget {
  const MotorPrivacyPolicy({super.key});

  @override
  State<MotorPrivacyPolicy> createState() => _MotorPrivacyPolicyState();
}

class _MotorPrivacyPolicyState extends State<MotorPrivacyPolicy> {
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
            child: logo(),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              'Privacy Policy',
              style: bodyLarge,
            ),
          ),
          separator,
          const Padding(
            padding:
                EdgeInsets.only(top: 8.0, left: 14, right: 14, bottom: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1. INFORMATION WE COLLECT',
                  style: bbodyMediumGrey,
                ),
                Text(
                  'We may collect the following types of personal information:',
                  style: bbodySmallGrey,
                ),
                Text(
                  '1. Contact information, including name, address, phone number, and email address.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '2. Vehicle information, such as make, model, year, and Vehicle Identification Number (VIN).',
                  style: bbodySmallGrey,
                ),
                Text(
                  '3. Vehicle information, such as make, model, year, and Vehicle Identification Number (VIN).',
                  style: bbodySmallGrey,
                ),
                Text(
                  '4. Insurance history and claims information.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '5. Payment information for premium processing.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '2. HOW WE USE YOUR INFORMATION',
                  style: bbodyMediumGrey,
                ),
                Text(
                  'We may use your personal information for the following purposes:',
                  style: bbodySmallGrey,
                ),
                Text(
                  '1. Evaluating your application for motor insurance coverage.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '2. Processing and managing your insurance policy.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '3. Communicating with you about your policy, including updates, renewals, and claims.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '4. Complying with legal and regulatory requirements.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '3. INFORMATION SHARING',
                  style: bbodyMediumGrey,
                ),
                Text(
                  'We do not sell, trade, or rent your personal information to third parties. We may share your information with:',
                  style: bbodySmallGrey,
                ),
                Text(
                  '1. Insurance underwriters and providers for policy processing.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '2. Law enforcement or regulatory authorities as required by law.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '3: Service providers who assist us in operating our business.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '4. DATA SECURITY',
                  style: bbodyMediumGrey,
                ),
                Text(
                  'We employ industry-standard security measures to protect your personal information from unauthorized access and disclosure. However, no data transmission over the internet can be guaranteed to be 100% secure.',
                  style: bbodySmallGrey,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
