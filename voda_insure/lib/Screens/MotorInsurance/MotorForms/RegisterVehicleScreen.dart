import 'package:flutter/material.dart';
import 'package:voda_insure/Controllers/MotorInsurance/RegisterVehicleController.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorStyles.dart';
import 'package:voda_insure/Styles/style.dart';

class RegisterVehicleScreen extends StatefulWidget {
  const RegisterVehicleScreen({super.key});

  @override
  State<RegisterVehicleScreen> createState() => _RegisterVehicleScreenState();
}

class _RegisterVehicleScreenState extends State<RegisterVehicleScreen> {
  Textstyle textStyle = Textstyle();
  Appstyle appStyle = Appstyle();
  TextEditingController excontroller = TextEditingController();
  String _selectedCategory = 'SUV';

  final TextEditingController registrationController = TextEditingController();
  final TextEditingController chasisController = TextEditingController();
  final TextEditingController cvController = TextEditingController();
  final TextEditingController tonnageController = TextEditingController();
  final TextEditingController makeController = TextEditingController();
  final TextEditingController valueController = TextEditingController();
  final TextEditingController placeController = TextEditingController();
  final TextEditingController yearOfManufactureController =
      TextEditingController();
  final TextEditingController driversIDController = TextEditingController();
  final TextEditingController driversNameController = TextEditingController();
  TextEditingController yearOfExperienceController = TextEditingController();
  final RegisterVehicleRequest request = RegisterVehicleRequest();
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
            child: appStyle.logo(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              'Register the cover of your Choice',
              style: textStyle.bodyLarge,
            ),
          ),
          separator,
          Padding(
              padding: const EdgeInsets.only(left: 18.0, bottom: 23.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Select Vehicle Category:',
                          style: textStyle.bodyLarge,
                        ),
                        DropdownButton<String>(
                          // menuMaxHeight: 130.0,
                          hint: Text('policy'),
                          borderRadius: BorderRadius.circular(20),
                          value: _selectedCategory,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedCategory = newValue!;
                            });
                          },
                          items: <String>['SUV', 'Double_Cab', 'Sedan']
                              .map<DropdownMenuItem<String>>(
                                (String value) => DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                    RegisterVehicleTextfield(
                      controller: registrationController,
                      label: 'Registration Number:',
                    ),
                    RegisterVehicleTextfield(
                      controller: chasisController,
                      label: 'Chasis Number:',
                    ),
                    RegisterVehicleTextfield(
                      controller: cvController,
                      label: 'CV Number',
                    ),
                    RegisterVehicleTextfield(
                      controller: tonnageController,
                      label: 'Tonnage:',
                    ),
                    RegisterVehicleTextfield(
                      controller: makeController,
                      label: 'Make:',
                    ),
                    RegisterVehicleTextfield(
                      controller: valueController,
                      label: 'Value:',
                    ),
                    RegisterVehicleTextfield(
                      controller: placeController,
                      label: 'Place:',
                    ),
                    DatePicker(
                      controller: yearOfManufactureController,
                      label: 'Year of Manufacture:',
                    ),
                    RegisterVehicleTextfield(
                      controller: driversIDController,
                      label: 'ID Number of Driver:',
                    ),
                    RegisterVehicleTextfield(
                      controller: driversNameController,
                      label: 'Name of Driver:',
                    ),
                    RegisterVehicleTextfield(
                      controller: yearOfExperienceController,
                      label: 'Years of Experience:',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: SizedBox(
                        width: 350,
                        height: 42,
                        child: ElevatedButton(
                          onPressed: () {
                            request.registrationRequest(
                                registrationController.text,
                                chasisController.text,
                                cvController.text,
                                tonnageController.text,
                                makeController.text,
                                valueController.text,
                                placeController.text,
                                yearOfManufactureController.text,
                                driversIDController.text,
                                driversNameController.text,
                                yearOfExperienceController.text);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0XFF021E3E),
                          ),
                          child: Text(
                            'REGISTER VEHICLE',
                            style: textStyle.buttonText,
                          ),
                        ),
                      ),
                    ),
                  ])),
        ]),
      ),
    );
  }
}
