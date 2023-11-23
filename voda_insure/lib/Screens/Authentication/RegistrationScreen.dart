import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/Authentication/RegistrationController.dart';
import 'package:voda_insure/Models/AuthModels/RegistrationModel.dart';
import 'package:voda_insure/Styles/style.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:country_picker/country_picker.dart';
// import 'package:intl_phone_field/phone_number.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegistrationScreen extends StatefulWidget {
  final bool registerWithEmail;
  final bool registerCountry;
  final bool registerWithPhone;
  const RegistrationScreen(
      {super.key,
      required this.registerWithEmail,
      required this.registerWithPhone,
      required this.registerCountry});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  Textstyle textStyle = Textstyle();
  Appstyle appStyle = Appstyle();
  final RegistrationRequest request = RegistrationRequest();

  late TextEditingController fullnameController = TextEditingController();
  late TextEditingController nationalIdController = TextEditingController();

  late TextEditingController emailController = TextEditingController();
  late TextEditingController phoneController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  late TextEditingController confirmPasswordController =
      TextEditingController();
  String formattedPhoneNumber = '';

  Country? selectedCountry;

  void _openCountryPicker() {
    showCountryPicker(
      context: context,
      showPhoneCode: false,
      onSelect: (Country country) {
        setState(() {
          selectedCountry = country;
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    fullnameController = TextEditingController(text: '');
    emailController = TextEditingController(text: '');

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
            Navigator.pushNamed(context, '/registrationselect');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              width: 350,
              height: 48,
              child: TextField(
                controller: nationalIdController,
                decoration: InputDecoration(
                  hintText: 'National ID',
                  focusedBorder: textfieldBorder,
                  enabledBorder: textfieldBorder,
                ),
              ),
            ),
          ),
          if (widget.registerWithEmail) ...[
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
          ],
          if (widget.registerCountry) ...[
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: 350,
                height: 48,
                child: TextField(
                  readOnly: true,
                  onTap: _openCountryPicker,
                  controller: TextEditingController(
                    text: selectedCountry?.name ?? 'Select Country',
                  ),
                  decoration: InputDecoration(
                    focusedBorder: textfieldBorder,
                    enabledBorder: textfieldBorder,
                  ),
                ),
              ),
            ),
          ],
          if (widget.registerWithPhone) ...[
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: 350,
                height: 48,
                child: InternationalPhoneNumberInput(
                  inputDecoration: InputDecoration(
                    hintText: 'Phone Number',
                    focusedBorder: textfieldBorder,
                    enabledBorder: textfieldBorder,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  onInputChanged: (PhoneNumber number) {
                    String countryCode = number.dialCode ?? '';
                    String phoneNumber = number.phoneNumber ?? '';
                    formattedPhoneNumber = ' $phoneNumber';
                  },
                  selectorConfig: const SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  textFieldController: phoneController,
                ),
              ),
            ),
          ],
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
                  request.registrationRequest(
                      fullnameController.text,
                      emailController.text,
                      passwordController.text,
                      formattedPhoneNumber);
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
