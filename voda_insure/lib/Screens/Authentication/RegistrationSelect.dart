import 'package:flutter/material.dart';
import 'package:voda_insure/Screens/Authentication/RegistrationScreen.dart';
import 'package:voda_insure/Styles/style.dart';

class RegistrationSelect extends StatefulWidget {
  const RegistrationSelect({super.key});

  @override
  State<RegistrationSelect> createState() => _RegistrationSelectState();
}

class _RegistrationSelectState extends State<RegistrationSelect> {
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
            Navigator.pushNamed(context, '/login');
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
            top: 10,
          ),
          child: Text(
            'Register by',
            style: textStyle.bodyLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Center(
            child: SizedBox(
              width: 350,
              height: 42,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegistrationScreen(
                            registerWithEmail: true,
                            registerCountry: true,
                            registerWithPhone: false)),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF021E3E),
                ),
                child: Text(
                  'Email',
                  style: textStyle.buttonText,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 30.0,
          ),
          child: Text(
            'OR',
            style: textStyle.bodyLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Center(
            child: SizedBox(
              width: 350,
              height: 42,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegistrationScreen(
                            registerWithEmail: false,
                            registerCountry: false,
                            registerWithPhone: true)),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF021E3E),
                ),
                child: Text(
                  'Phone Number',
                  style: textStyle.buttonText,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 30.0,
          ),
          child: Text(
            'OR',
            style: textStyle.bodyLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Center(
            child: SizedBox(
              width: 350,
              height: 42,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegistrationScreen(
                            registerWithEmail: true,
                            registerCountry: false,
                            registerWithPhone: true)),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF021E3E),
                ),
                child: Text(
                  'Email and phone number',
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
