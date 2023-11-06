import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({super.key});

  @override
  State<PhoneVerificationScreen> createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  Textstyle textStyle = Textstyle();
  Appstyle appStyle = Appstyle();
  TextEditingController phonecodecontroller = TextEditingController();
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
            Navigator.pushNamed(context, '/verificationscreen');
          },
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
          width: 350,
          height: 48,
          child: appStyle.logo(),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 170,
            top: 30.0,
          ),
          child: Text(
            'Phone Verification:',
            style: textStyle.bodyLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: SizedBox(
            width: 350,
            height: 48,
            child: TextField(
              controller: phonecodecontroller,
              decoration: InputDecoration(
                hintText: 'Phone Number',
                focusedBorder: textfieldBorder,
                enabledBorder: textfieldBorder,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Center(
            child: SizedBox(
              width: 350,
              height: 42,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF021E3E),
                ),
                child: Text(
                  'Request Code',
                  style: textStyle.buttonText,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
