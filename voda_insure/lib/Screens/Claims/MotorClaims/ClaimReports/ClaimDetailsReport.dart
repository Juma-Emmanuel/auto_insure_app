import 'package:flutter/material.dart';
import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimReports/ClaimDetailTextfield.dart';

import 'package:voda_insure/Styles/style.dart';

class MotorClaimDetailsReport extends StatefulWidget {
  const MotorClaimDetailsReport({super.key});

  @override
  State<MotorClaimDetailsReport> createState() =>
      _MotorClaimDetailsReportState();
}

class _MotorClaimDetailsReportState extends State<MotorClaimDetailsReport> {
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
                            child: MotorClaimDetailsTextField(
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
                            child: MotorClaimDetailsTextField(
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
                            child: MotorClaimDetailsTextField(
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
                            child: MotorClaimDetailsTextField(
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
                              'Date of Clash:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MotorClaimDetailsTextField(
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
                              'Vehicle Category:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MotorClaimDetailsTextField(
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
                              'Vehicle Whereabouts:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MotorClaimDetailsTextField(
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
                              "Driver's ID Number:",
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MotorClaimDetailsTextField(
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
                              'Name of Driver:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MotorClaimDetailsTextField(
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
