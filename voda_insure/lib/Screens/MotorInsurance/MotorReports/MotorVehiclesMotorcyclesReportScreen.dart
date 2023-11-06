import 'package:flutter/material.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorReports/MotorReportTextfield.dart';
import 'package:voda_insure/Styles/style.dart';

class MotorVehiclesMotorcyclesReportScreen extends StatefulWidget {
  const MotorVehiclesMotorcyclesReportScreen({super.key});

  @override
  State<MotorVehiclesMotorcyclesReportScreen> createState() =>
      _MotorVehiclesMotorcyclesReportScreenState();
}

class _MotorVehiclesMotorcyclesReportScreenState
    extends State<MotorVehiclesMotorcyclesReportScreen> {
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
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Text(
                'Motorvehicle/Motorcycle Report',
                style: textStyle.bodyLarge,
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
                            child: Text(
                              'Registration Number:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MotorReportTextField(
                              input: 'KDC 5000',
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
                              'Chasis Number:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MotorReportTextField(
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
                              'CV Number',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MotorReportTextField(
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
                              'Tonnage:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MotorReportTextField(
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
                              'Make:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MotorReportTextField(
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
                              'Value:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MotorReportTextField(
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
                              'Place:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MotorReportTextField(
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
                              'Year of Manufacture:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MotorReportTextField(
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
                              'ID Number of Driver:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MotorReportTextField(
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
                            child: MotorReportTextField(
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
                              'Years of Experience:',
                              style: textStyle.bodyMediumGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: MotorReportTextField(
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
