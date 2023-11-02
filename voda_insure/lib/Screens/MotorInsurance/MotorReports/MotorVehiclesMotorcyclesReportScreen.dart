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
              child: logo(),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Text(
                'Motorvehicle/Motorcycle Report',
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
                              'Registration Number:',
                              style: bodyMediumGrey,
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
                            child: const Text(
                              'Chasis Number:',
                              style: bodyMediumGrey,
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
                            child: const Text(
                              'CV Number',
                              style: bodyMediumGrey,
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
                            child: const Text(
                              'Tonnage:',
                              style: bodyMediumGrey,
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
                            child: const Text(
                              'Make:',
                              style: bodyMediumGrey,
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
                            child: const Text(
                              'Value:',
                              style: bodyMediumGrey,
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
                            child: const Text(
                              'Place:',
                              style: bodyMediumGrey,
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
                            child: const Text(
                              'Year of Manufacture:',
                              style: bodyMediumGrey,
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
                            child: const Text(
                              'ID Number of Driver:',
                              style: bodyMediumGrey,
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
                            child: const Text(
                              'Name of Driver:',
                              style: bodyMediumGrey,
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
                            child: const Text(
                              'Years of Experience:',
                              style: bodyMediumGrey,
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
