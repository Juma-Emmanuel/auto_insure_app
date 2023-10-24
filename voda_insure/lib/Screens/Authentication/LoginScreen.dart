import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/Styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.only(
                  left: 70,
                ),
                width: 350,
                height: 48,
                child: logo()),
            const SizedBox(
              height: 81,
            ),
            Column(children: [
              Container(
                margin: const EdgeInsets.only(bottom: 9.0),
                width: 350,
                height: 48,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    focusedBorder: textfieldBorder,
                    enabledBorder: textfieldBorder,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                width: 350,
                height: 48,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    focusedBorder: textfieldBorder,
                    enabledBorder: textfieldBorder,
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10, left: 170),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot password',
                      style: bodyLarge,
                    ),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                width: 350,
                height: 42,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFF021E3E),
                  ),
                  child: const Text(
                    'Login',
                    style: buttonText,
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 200,
            ),
            Container(
              margin: const EdgeInsets.only(top: 0),
              width: 200,
              height: 48,
              child: Image.asset('assets/smart_logo.jpg'),
            ),
          ]),
    );
  }
}
