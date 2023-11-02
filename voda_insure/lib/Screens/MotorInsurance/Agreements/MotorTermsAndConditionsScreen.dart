import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class MotorTermsandConditions extends StatefulWidget {
  const MotorTermsandConditions({super.key});

  @override
  State<MotorTermsandConditions> createState() =>
      _MotorTermsandConditionsState();
}

class _MotorTermsandConditionsState extends State<MotorTermsandConditions> {
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
              'Terms and conditions',
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
                  '1. ACCEPTANCE OF TERMS',
                  style: bbodyMediumGrey,
                ),
                Text(
                  'By obtaining motor insurance coverage from [Your Motor Insurance Company Name], you agree to be bound by these Terms and Conditions, including our Privacy Policy. Please read these terms carefully before purchasing insurance coverage.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '2. COVERAGE',
                  style: bbodyMediumGrey,
                ),
                Text(
                  'Our motor insurance policy provides coverage as specified in your policy documents. Coverage terms, limits, and conditions are outlined in the policy. It is your responsibility to read and understand your policy.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '3. PREMIUM PAYMENTS',
                  style: bbodyMediumGrey,
                ),
                Text(
                  'You agree to pay the premiums as specified in your policy documents. Failure to pay premiums may result in the cancellation of your policy.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '4. CLAIMS',
                  style: bbodyMediumGrey,
                ),
                Text(
                  'To initiate a claim, you must follow the procedures outlined in your policy documents. All claims are subject to the terms and conditions of your policy.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '5. POLICY RENEWAL',
                  style: bbodyMediumGrey,
                ),
                Text(
                  'Your policy may be eligible for renewal upon the completion of the policy period. Renewal terms, including premium adjustments, will be communicated to you prior to the expiration of your policy.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '6. CANCELLATION',
                  style: bbodyMediumGrey,
                ),
                Text(
                  'You may cancel your policy as per the terms outlined in your policy documents. We reserve the right to cancel your policy in accordance with applicable laws and regulations.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '7. LIMITATION OF LIABILITY',
                  style: bbodyMediumGrey,
                ),
                Text(
                  'Our liability is limited to the terms and conditions of your policy. We are not liable for any indirect, incidental, special, or consequential damages.',
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
