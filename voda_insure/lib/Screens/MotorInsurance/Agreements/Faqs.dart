import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class Faqs extends StatefulWidget {
  const Faqs({super.key});

  @override
  State<Faqs> createState() => _FaqsState();
}

class _FaqsState extends State<Faqs> {
  Textstyle textStyle = Textstyle();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            width: 350,
            height: 48,
            child: logo(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              'Frequently Asked Questions',
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
                  '1. What does motor insurance cover?',
                  style: textStyle.bbodyMediumGrey,
                ),
                Text(
                  'Motor insurance typically covers damages to your vehicle caused by accidents, theft, natural disasters, and third-party liability for bodily injury or property damage.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '2. How is my motor insurance premium calculated?',
                  style: textStyle.bbodyMediumGrey,
                ),
                Text(
                  "Insurance premiums are calculated based on factors like your vehicle's make and model, your driving history, location, and coverage options. Safe drivers with a clean record often receive lower premiums.",
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '3. What is third-party liability insurance?',
                  style: textStyle.bbodyMediumGrey,
                ),
                Text(
                  "Third-party liability insurance covers damages or injuries caused to other people or their property by your vehicle. It's mandatory in many countries and is included in standard motor insurance policies.",
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '6. What should I do after a car accident?',
                  style: textStyle.bbodyMediumGrey,
                ),
                Text(
                  'After an accident, ensure everyone is safe, exchange details with the other party, and report the incident to the police and your insurance provider. Document the scene with photos and contact us to initiate the claims process.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '8. Can I transfer my motor insurance policy to a new vehicle?',
                  style: textStyle.bbodyMediumGrey,
                ),
                Text(
                  'Yes, your insurance policy is transferable to a new vehicle. Notify your us about the change in the vehicle and update the policy details accordingly.',
                  style: textStyle.bbodySmallGrey,
                ),
                Text(
                  '6. How can I lower my motor insurance premium?',
                  style: textStyle.bbodyMediumGrey,
                ),
                Text(
                  'You can lower your premium by being a safe driver,  bundling multiple insurance policies, and taking advantage of discounts offered by us.',
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
