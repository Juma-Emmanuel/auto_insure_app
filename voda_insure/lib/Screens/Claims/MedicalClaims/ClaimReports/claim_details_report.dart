import 'package:flutter/material.dart';
import 'package:voda_insure/Screens/Claims/MedicalClaims/ClaimReports/claim_detail_textfield.dart';

import 'package:voda_insure/Styles/style.dart';

class MedicalClaimDetailsReport extends StatefulWidget {
  const MedicalClaimDetailsReport({super.key});

  @override
  State<MedicalClaimDetailsReport> createState() =>
      _MedicalClaimDetailsReportState();
}

class _MedicalClaimDetailsReportState extends State<MedicalClaimDetailsReport> {
  Textstyle textStyle = Textstyle();
  Appstyle appStyle = Appstyle();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              width: 350,
              height: 48,
              child: appStyle.logo(),
            ),
            separator,
            Column(
              children: [
                Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // height: 21,
                            margin: const EdgeInsets.only(
                              bottom: 20.0,
                            ),
                            child: Text(
                              'Policy Number:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MedicalClaimDetailsTextField(
                              input: 'A0012RQSD',
                            ),
                          )
                        ])),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // height: 21,
                            margin: const EdgeInsets.only(
                              bottom: 20.0,
                            ),
                            child: Text(
                              'Cover Type:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MedicalClaimDetailsTextField(
                              input: '',
                            ),
                          )
                        ])),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // height: 21,
                            margin: const EdgeInsets.only(
                              bottom: 20.0,
                            ),
                            child: Text(
                              'Date of Claim:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MedicalClaimDetailsTextField(
                              input: '',
                            ),
                          )
                        ])),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // height: 21,
                            margin: const EdgeInsets.only(
                              bottom: 20.0,
                            ),
                            child: Text(
                              'Claim Expiry Date:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MedicalClaimDetailsTextField(
                              input: '',
                            ),
                          )
                        ])),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // height: 21,
                            margin: const EdgeInsets.only(
                              bottom: 20.0,
                            ),
                            child: Text(
                              'Date of Occurence:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MedicalClaimDetailsTextField(
                              input: '',
                            ),
                          )
                        ])),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // height: 21,
                            margin: const EdgeInsets.only(
                              bottom: 20.0,
                            ),
                            child: Text(
                              'Name of Member:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MedicalClaimDetailsTextField(
                              input: '',
                            ),
                          )
                        ])),
              ],
            )
          ]),
        )));
  }
}
