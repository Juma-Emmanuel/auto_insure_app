import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class PasswordResetScreen extends StatefulWidget {
  const PasswordResetScreen({super.key});

  @override
  State<PasswordResetScreen> createState() => _PasswordResetScreenState();
}

class _PasswordResetScreenState extends State<PasswordResetScreen> {
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
            Navigator.pushNamed(context, '/verificationcodescreen');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 80.0,
              bottom: 20,
            ),
            child: appStyle.logo(),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 20,
            ),
            child: Text(
              'Password Reset',
              style: textStyle.bodyLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 30.0,
            ),
            child: SizedBox(
              width: 350,
              height: 48,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'New Password',
                  focusedBorder: textfieldBorder,
                  enabledBorder: textfieldBorder,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 30.0,
            ),
            child: SizedBox(
              width: 350,
              height: 48,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  focusedBorder: textfieldBorder,
                  enabledBorder: textfieldBorder,
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 350,
              height: 42,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF021E3E),
                ),
                child: Text(
                  'Reset Password',
                  style: textStyle.buttonText,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
