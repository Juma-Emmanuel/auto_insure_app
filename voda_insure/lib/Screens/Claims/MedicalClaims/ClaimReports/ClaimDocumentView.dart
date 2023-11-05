import 'package:flutter/material.dart';

import 'package:voda_insure/Styles/style.dart';

class MedicalClaimDocumentView extends StatefulWidget {
  const MedicalClaimDocumentView({super.key});

  @override
  State<MedicalClaimDocumentView> createState() =>
      _MedicalClaimDocumentViewState();
}

class _MedicalClaimDocumentViewState extends State<MedicalClaimDocumentView> {
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
              'Image View',
              style: textStyle.bodyLarge,
            ),
          ),
          separator,
        ]),
      ),
    );
  }
}
