import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class MotorReportTextField extends StatefulWidget {
  final String input;

  const MotorReportTextField({
    super.key,
    required this.input,
  });

  @override
  State<MotorReportTextField> createState() => _MotorReportTextFieldState();
}

class _MotorReportTextFieldState extends State<MotorReportTextField> {
  late TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller = new TextEditingController(text: widget.input);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (text) {
        setState(() {});
      },
      readOnly: true,
      controller: controller,
      style: bodyLarge,
    );
  }
}
