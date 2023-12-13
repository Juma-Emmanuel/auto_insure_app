import 'package:flutter/material.dart';
import 'package:voda_insure/Controllers/MotorInsurance/GetVehicle.dart';
import 'package:voda_insure/Models/MotorModels/Vehicle.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorReports/MotorReportTextfield.dart';
import 'package:voda_insure/Styles/style.dart';

class MotorVehiclesMotorcyclesReportScreen extends StatefulWidget {
  final int vehicleId;
  const MotorVehiclesMotorcyclesReportScreen(
      {super.key, required this.vehicleId});

  @override
  State<MotorVehiclesMotorcyclesReportScreen> createState() =>
      _MotorVehiclesMotorcyclesReportScreenState();
}

class _MotorVehiclesMotorcyclesReportScreenState
    extends State<MotorVehiclesMotorcyclesReportScreen> {
  Textstyle textStyle = Textstyle();
  Appstyle appStyle = Appstyle();
  GetVehicle getVehicle = GetVehicle();
  Vehicle? vehicle;

  @override
  void initState() {
    super.initState();
    fetchVehicle();
  }

  Future<void> fetchVehicle() async {
    try {
      Vehicle fetchedVehicle = await getVehicle.fetchVehicle(widget.vehicleId);
      setState(() {
        vehicle = fetchedVehicle;
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
            vehicle != null
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
                                    'Registration Number:',
                                    style: textStyle.bodyMediumGrey,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                  child: MotorReportTextField(
                                    input: vehicle!.registrationNumber,
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
                                    'Chasis Number:',
                                    style: textStyle.bodyMediumGrey,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                  child: MotorReportTextField(
                                    input: vehicle!.chasisNumber,
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
                                    'CV Number',
                                    style: textStyle.bodyMediumGrey,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                  child: MotorReportTextField(
                                    input: vehicle!.cvNumber,
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
                                    'Tonnage:',
                                    style: textStyle.bodyMediumGrey,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                  child: MotorReportTextField(
                                    input: vehicle!.tonnage,
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
                                    'Make:',
                                    style: textStyle.bodyMediumGrey,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                  child: MotorReportTextField(
                                    input: vehicle!.make,
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
                                    'Value:',
                                    style: textStyle.bodyMediumGrey,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                  child: MotorReportTextField(
                                    input: vehicle!.vehicleValue.toString(),
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
                                    'Place:',
                                    style: textStyle.bodyMediumGrey,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                  child: MotorReportTextField(
                                    input: vehicle!.place,
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
                                    'Year of Manufacture:',
                                    style: textStyle.bodyMediumGrey,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                  child: MotorReportTextField(
                                    input: vehicle!.manufactureYear,
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
                                    'ID Number of Driver:',
                                    style: textStyle.bodyMediumGrey,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                  child: MotorReportTextField(
                                    input: vehicle!.driverId,
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
                                    'Name of Driver:',
                                    style: textStyle.bodyMediumGrey,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                  child: MotorReportTextField(
                                    input: vehicle!.driverName,
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
                                    'Years of Experience:',
                                    style: textStyle.bodyMediumGrey,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                  child: MotorReportTextField(
                                    input: vehicle!.driverExperience,
                                  ),
                                )
                              ])),
                    ],
                  )
                : CircularProgressIndicator(),
          ]),
        )));
  }
}
