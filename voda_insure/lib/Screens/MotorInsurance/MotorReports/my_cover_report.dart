import 'package:flutter/material.dart';
import 'package:voda_insure/Controllers/MotorInsurance/GetMotorCover.dart';
import 'package:voda_insure/Models/MotorModels/GetMotorCoverModel.dart';
import 'package:voda_insure/Models/MotorModels/PostMotorCoverModel.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorReports/motor_report_textfield.dart';
import 'package:voda_insure/Styles/style.dart';

class MycoverReport extends StatefulWidget {
  final int motorId;
  const MycoverReport({super.key, required this.motorId});

  @override
  State<MycoverReport> createState() => _MycoverReportState();
}

class _MycoverReportState extends State<MycoverReport> {
  Textstyle textStyle = Textstyle();
  Appstyle appStyle = Appstyle();
  GetMotorCover getMotorCover = GetMotorCover();

  GetMotorCoverModel? motorCover;

  @override
  void initState() {
    super.initState();
    fetchMotorCover();
  }

  Future<void> fetchMotorCover() async {
    try {
      GetMotorCoverModel fetchedMotorCover =
          await getMotorCover.fetchMotorCover(widget.motorId);
      setState(() {
        motorCover = fetchedMotorCover;
      });
    } catch (e) {
      throw Exception('Error during fetch request: $e');
    }
  }

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
            child: appStyle.logo(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              'My Cover',
              style: textStyle.bodyLarge,
            ),
          ),
          separator,
          motorCover != null
              ? Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, right: 30.0, top: 30),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  bottom: 20.0,
                                ),
                                child: Text(
                                  'Policy',
                                  style: textStyle.bodyMediumGrey,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                                child: MotorReportTextField(
                                  input: motorCover!.policyNumber,
                                ),
                              )
                            ])),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, right: 30.0, top: 30),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  bottom: 20.0,
                                ),
                                child: Text(
                                  'Insurance Cover:',
                                  style: textStyle.bodyMediumGrey,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                                child: MotorReportTextField(
                                  input: motorCover!.coverType,
                                ),
                              )
                            ])),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, right: 30.0, top: 30),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  bottom: 20.0,
                                ),
                                child: Text(
                                  'Renewal Date',
                                  style: textStyle.bodyMediumGrey,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                                child: MotorReportTextField(
                                  input: motorCover!.coverRenewalDate,
                                ),
                              )
                            ])),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, right: 30.0, top: 30),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  bottom: 20.0,
                                ),
                                child: Text(
                                  'Expiry Date:',
                                  style: textStyle.bodyMediumGrey,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                                child: MotorReportTextField(
                                  input: motorCover!.coverExpiryDate,
                                ),
                              )
                            ])),
                  ],
                )
              : const CircularProgressIndicator(),
        ])));
  }
}
