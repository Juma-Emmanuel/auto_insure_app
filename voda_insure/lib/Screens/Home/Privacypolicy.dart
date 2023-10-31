import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class PrivatePolicyScreen extends StatefulWidget {
  const PrivatePolicyScreen({super.key});

  @override
  State<PrivatePolicyScreen> createState() => _PrivatePolicyScreenState();
}

class _PrivatePolicyScreenState extends State<PrivatePolicyScreen> {
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
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
            'Private Policy for VodaInsure',
            style: bodyLarge,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1. Introduction',
                  style: bbodyMediumGrey,
                ),
                Text(
                  'Welcome to Vodalnsure, an online insurance platform. This Privacy Policy explains how we collect, use, disclose, and protect your personal information when you use our web application ("the Application").',
                  style: bbodySmallGrey,
                ),
                Text(
                  '2. Information We Collect',
                  style: bbodyMediumGrey,
                ),
                Text(
                  '1. Information You Provide: We may collect personal information that you voluntarily provide when using the Application, such as your name, contact information, payment details, and other data necessary to provide our services.',
                  style: bbodySmallGrey,
                ),
                Text(
                  ' 2. Automatically Collected Information: We may collect information about your use of the Application, including your IP address, device information, browsing history, and usage patterns.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '3. Cookies and Tracking Technologies: We use cookies and similar tracking technologies to enhance your experience and collect information about your online activities. You can manage your cookie preferences in your browser settings.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '3. How We Use Your Information',
                  style: bbodyMediumGrey,
                ),
                Text(
                  '1. To provide and maintain our services.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '2. To process transactions and payments.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '3. To communicate with you about our services.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '4. To personalize and improve your experience.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '5. To comply with legal obligations.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '5. To comply with legal obligations.',
                  style: bbodySmallGrey,
                ),
                Text(
                  '6. To protect our rights and interests.',
                  style: bbodySmallGrey,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
