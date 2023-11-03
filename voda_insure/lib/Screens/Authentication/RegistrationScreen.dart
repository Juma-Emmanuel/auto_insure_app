import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/Authentication/RegistrationController.dart';
import 'package:voda_insure/Models/AuthModels/RegistrationModel.dart';
import 'package:voda_insure/Styles/style.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  Textstyle textStyle = Textstyle();
  final RegistrationRequest request = RegistrationRequest();

  late TextEditingController fullnameController = TextEditingController();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController phoneController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  late TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  void initState() {
    super.initState();
    fullnameController = TextEditingController(text: '');
    emailController = TextEditingController(text: '');
    phoneController = TextEditingController(text: '');
    passwordController = TextEditingController(text: '');
    confirmPasswordController = TextEditingController(text: '');
  }

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
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Text(
                  'Create your Account',
                  style: textStyle.bodyLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 350,
                  height: 48,
                  child: TextField(
                    controller: fullnameController,
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
                    controller: emailController,
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
                    controller: phoneController,
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
                    controller: passwordController,
                    onChanged: (val) {},
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
                    controller: confirmPasswordController,
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
                    onPressed: () {
                      var email, password;

                      setState() {
                        email = emailController.text;
                        password = passwordController.text;
                      }

                      request.registrationRequest(
                          emailController.text, passwordController.text);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF021E3E),
                    ),
                    child: Text(
                      'Create Account',
                      style: textStyle.buttonText,
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
                        onPressed: () {},
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
