import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class Vehicle extends StatefulWidget {
  final String imagePath;
  final String registrationNumber;
  const Vehicle(
      {super.key, required this.imagePath, required this.registrationNumber});

  @override
  State<Vehicle> createState() => _VehicleState();
}

class _VehicleState extends State<Vehicle> {
  Textstyle textStyle = Textstyle();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/motorvehiclemotorcyclereport');
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
                    child: Image.network(
                      widget.imagePath,
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  widget.registrationNumber,
                  style: textStyle.bodyLarge,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
