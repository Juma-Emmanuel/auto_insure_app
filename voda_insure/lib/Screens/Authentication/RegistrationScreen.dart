import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/Authentication/RegistrationController.dart';
import 'package:voda_insure/Models/AuthModels/RegistrationModel.dart';
import 'package:voda_insure/Styles/style.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:country_picker/country_picker.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  Future<void> postData() async {
    var url = 'http://10.0.2.2:8080/register';

    var headers = {
      'Content-Type': 'application/json',
      'Cookie': 'JSESSIONID=C67875C92020A131353A2804AF99FC10'
    };

    var data =
        json.encode({"email": "jairus", "password": "actuarial science"});

    try {
      var response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: data,
      );

      if (response.statusCode == 200) {
        print('hellooooooooooo');
        print(json.encode(json.decode(response.body)));
      } else {
        print(response.reasonPhrase);
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  Textstyle textStyle = Textstyle();
  Appstyle appStyle = Appstyle();
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
                child: appStyle.logo(),
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
                  height: 68,
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      focusedBorder: textfieldBorder,
                      enabledBorder: textfieldBorder,
                      labelText: 'Phone Number',
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {},
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
                      // postData();
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
