import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class MedicalFileUpload extends StatefulWidget {
  const MedicalFileUpload({super.key});

  @override
  State<MedicalFileUpload> createState() => _MedicalFileUploadState();
}

class _MedicalFileUploadState extends State<MedicalFileUpload> {
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
            'Claims',
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
              'Browse Document',
              style: textStyle.bodyMediumWhite,
            ),
          ),
        ),
      ]),
    );
  }
}
