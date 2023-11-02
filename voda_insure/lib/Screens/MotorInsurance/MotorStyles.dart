import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class MotorSelect extends StatefulWidget {
  final Icon icon;
  final String selectText;
  final VoidCallback onTap;

  MotorSelect(
      {required this.icon, required this.selectText, required this.onTap});

  @override
  _MotorSelectState createState() => _MotorSelectState();
}

class _MotorSelectState extends State<MotorSelect> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: 48,
        width: 355,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0XFF000000).withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(right: 9.0), child: widget.icon),
              Text(
                widget.selectText,
                style: bodyLargeGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterVehicleTextfield extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  RegisterVehicleTextfield(
      {super.key, required this.controller, required this.label});

  @override
  State<RegisterVehicleTextfield> createState() =>
      _RegisterVehicleTextfieldState();
}

class _RegisterVehicleTextfieldState extends State<RegisterVehicleTextfield> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: bodyLarge,
        ),
        SizedBox(
          width: 350,
          height: 38,
          child: TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              enabledBorder: textfieldBorder,
              focusedBorder: textfieldBorder,
            ),
          ),
        ),
      ],
    );
  }
}
