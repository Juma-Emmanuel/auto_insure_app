import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  Textstyle textStyle = Textstyle();
  Appstyle appStyle = Appstyle();
  TextEditingController verificationController = TextEditingController();
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
            'Verification Code:',
            style: textStyle.bodyLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: SizedBox(
            width: 350,
            height: 48,
            child: TextField(
              controller: verificationController,
              decoration: InputDecoration(
                hintText: 'Enter Code',
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
                  'Verify',
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
