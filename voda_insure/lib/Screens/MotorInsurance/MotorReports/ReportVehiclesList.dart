import 'package:flutter/material.dart';
import 'package:voda_insure/Controllers/MotorInsurance/GetVehicleController.dart';
import 'package:voda_insure/Models/MotorModels/Vehicle.dart';
import 'package:voda_insure/Styles/style.dart';

class ReportVehiclesList extends StatefulWidget {
  const ReportVehiclesList({super.key});

  @override
  State<ReportVehiclesList> createState() => _ReportVehiclesListState();
}

class _ReportVehiclesListState extends State<ReportVehiclesList> {
  GetVehicles getVehicles = GetVehicles();
  List<Vehicle> vehicles = [];
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      List<Vehicle> fetchedVehicles =
          await getVehicles.fetchVehiclesByNationalId(1212);
      setState(() {
        vehicles = fetchedVehicles;
      });
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }

  Textstyle textStyle = Textstyle();
  Appstyle appStyle = Appstyle();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
              child: Column(
            children: [
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
                  'MY VEHICLES/MOTOCYCLES REPORT ',
                  style: textStyle.bodyLarge,
                ),
              ),
              separator,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/motorvehiclemotorcyclereport');
                    },
                    child: Container(
                      width: 250,
                      height: 80,
                      decoration: shadow,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 114,
                              height: 60,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/white_lexus.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                'KDC 5000',
                                style: textStyle.bodyLarge,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              vehicles.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : Container(
                      child: Column(
                        children: [
                          for (int index = 0; index < vehicles.length; index++)
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, '/motorvehiclemotorcyclereport');
                                },
                                child: Container(
                                  width: 250,
                                  height: 80,
                                  decoration: shadow,
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                      10.0,
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 114,
                                          height: 60,
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.asset(
                                                'assets/white_lexus.jpg',
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Text(
                                            vehicles[index].registrationNumber,
                                            style: textStyle.bodyLarge,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
            ],
          )),
        ],
      ),
    );
  }
}
