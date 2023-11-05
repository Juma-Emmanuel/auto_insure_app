import 'package:flutter/material.dart';

import 'package:voda_insure/Styles/style.dart';

class MedicalClaimsDocumentsScreen extends StatefulWidget {
  const MedicalClaimsDocumentsScreen({super.key});

  @override
  State<MedicalClaimsDocumentsScreen> createState() =>
      _MedicalClaimsDocumentsScreenState();
}

class _MedicalClaimsDocumentsScreenState
    extends State<MedicalClaimsDocumentsScreen> {
  Textstyle textStyle = Textstyle();

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
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
              'Claim Documents',
              style: textStyle.bodyLarge,
            ),
          ),
          separator,
        ]),
      ),
    );
  }
}
