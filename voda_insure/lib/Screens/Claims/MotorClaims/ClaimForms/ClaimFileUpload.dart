import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class MotorFileUpload extends StatefulWidget {
  const MotorFileUpload({super.key});

  @override
  State<MotorFileUpload> createState() => _MotorFileUploadState();
}

class _MotorFileUploadState extends State<MotorFileUpload> {
  Appstyle appStyle = Appstyle();
  Textstyle textStyle = Textstyle();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
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
            'Upload file',
            style: textStyle.bodyLarge,
          ),
        ),
        separator,
        Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0XFF021E3E),
            ),
            child: Text(
              'Browse Image',
              style: textStyle.bodyMediumWhite,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0XFF021E3E),
            ),
            child: Text(
              'Browse Document',
              style: textStyle.bodyMediumWhite,
            ),
          ),
        ),
      ]),
    );
  }
}
