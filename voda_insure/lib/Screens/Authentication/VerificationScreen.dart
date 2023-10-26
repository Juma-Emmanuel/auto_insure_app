import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
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
          child: logo(),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 10,
          ),
          child: Text(
            'Verify by',
            style: bodyLarge,
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
                  Navigator.pushNamed(context, '/emailverificationscreen');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF021E3E),
                ),
                child: const Text(
                  'Email',
                  style: buttonText,
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 30.0,
          ),
          child: Text(
            'OR',
            style: bodyLarge,
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
                  Navigator.pushNamed(context, '/phoneverificationscreen');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF021E3E),
                ),
                child: const Text(
                  'Phone Number',
                  style: buttonText,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
