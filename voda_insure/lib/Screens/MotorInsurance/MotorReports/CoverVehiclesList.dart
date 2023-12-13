import 'package:flutter/material.dart';
import 'package:voda_insure/Controllers/MotorInsurance/GetVehicles.dart';
import 'package:voda_insure/Models/MotorModels/Vehicle.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorForms/BuyCoverScreen.dart';
import 'package:voda_insure/Styles/style.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorStyles.dart';

class CoverVehiclesList extends StatefulWidget {
  const CoverVehiclesList({super.key});

  @override
  State<CoverVehiclesList> createState() => _CoverVehiclesListState();
}

class _CoverVehiclesListState extends State<CoverVehiclesList> {
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
                  'Buy Cover For Your Vehicle',
                  style: textStyle.bodyLarge,
                ),
              ),
              separator,
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: MotorSelect(
                  selectText: 'Register Vehicle To Buy Cover',
                  onTap: () {
                    Navigator.pushNamed(context, '/registervehicle');
                  },
                  icon: const Icon(
                    Icons.directions_car_outlined,
                    color: Color(0XFF0E2847),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                ),
                child: Text(
                  'OR Select an Existing Vehicle',
                  style: textStyle.bodyLarge,
                ),
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
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BuyCoverScreen(
                                        vehicleId: vehicles[index].vehicleId,
                                      ),
                                    ),
                                  );
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
