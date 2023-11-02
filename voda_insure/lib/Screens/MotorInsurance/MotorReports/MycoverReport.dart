import 'package:flutter/material.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorReports/MotorReportTextfield.dart';
import 'package:voda_insure/Styles/style.dart';

class MycoverReport extends StatefulWidget {
  const MycoverReport({super.key});

  @override
  State<MycoverReport> createState() => _MycoverReportState();
}

class _MycoverReportState extends State<MycoverReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
              'My Cover',
              style: bodyLarge,
            ),
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
                          child: const Text(
                            'Policy',
                            style: bodyMediumGrey,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                          child: MotorReportTextField(
                            input: 'Motor',
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
                          child: const Text(
                            'Insurance Cover:',
                            style: bodyMediumGrey,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                          child: MotorReportTextField(
                            input: 'Comprehensive',
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
                          child: const Text(
                            'Renewal Date',
                            style: bodyMediumGrey,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                          child: MotorReportTextField(
                            input: '08/11/2023',
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
                          child: const Text(
                            'Expiry Date:',
                            style: bodyMediumGrey,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                          child: MotorReportTextField(
                            input: '08/12/2023',
                          ),
                        )
                      ])),
            ],
          )
        ])));
  }
}
