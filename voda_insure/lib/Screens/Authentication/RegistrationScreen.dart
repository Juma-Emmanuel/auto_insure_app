import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Styles/style.dart';

class User {
  String fullname;
  String email;
  String password;

  User({required this.fullname, required this.email, required this.password});

  Map<String, dynamic> toJson() {
    return {
      'fullname': fullname,
      'email': email,
      'password': password,
    };
  }
}

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  Future<void> registerUser(User user) async {
    final response = await http.post(
      Uri.parse('http://localhost:8080/api/users/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode == 200) {
      print('User registered successfully');
    } else {
      throw Exception('Failed to register user');
    }
  }

  void _registerUser() {
    User user = User(
      fullname: fullnameController.text,
      email: emailController.text,
      password: passwordController.text,
    );

    registerUser(user)
        .then((_) => print('Registration successful'))
        .catchError((error) => print('Error: $error'));
  }

  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
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
                      _registerUser();
                    },
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
