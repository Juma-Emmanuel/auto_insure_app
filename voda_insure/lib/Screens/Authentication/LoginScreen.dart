import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/animation.dart';
import 'package:voda_insure/Styles/style.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          DropAnimation(
              myWidget: Padding(
            padding: const EdgeInsets.only(
              top: 80.0,
              bottom: 61,
            ),
            child: logo(),
          )),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 30.0,
            ),
            child: SizedBox(
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
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10.0,
            ),
            child: SizedBox(
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
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 170,
              bottom: 10.0,
            ),
            child: SizedBox(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/verificationscreen');
                },
                child: const Text(
                  'Forgot password',
                  style: bodyLarge,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10.0,
            ),
            child: SizedBox(
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
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 200.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    color: Color(0XFF726666),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/registration');
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                          color: Color(0XFFC41E3A)),
                    ))
              ],
            ),
          ),
          SizedBox(
            width: 180,
            height: 34,
            child: Image.asset('assets/smart_logo.jpg'),
          ),
        ]),
      ),
    );
  }
}
