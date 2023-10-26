import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
            Navigator.pushNamed(context, '/login');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                  'Create your Account',
                  style: bodyLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 350,
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      focusedBorder: textfieldBorder,
                      enabledBorder: textfieldBorder,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
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
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 350,
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Phone number',
                      focusedBorder: textfieldBorder,
                      enabledBorder: textfieldBorder,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
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
                padding: const EdgeInsets.only(top: 30),
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
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 350,
                  height: 42,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF021E3E),
                    ),
                    child: const Text(
                      'Create Account',
                      style: buttonText,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                        color: Color(0XFF726666),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                              color: Color(0XFFC41E3A)),
                        ))
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
