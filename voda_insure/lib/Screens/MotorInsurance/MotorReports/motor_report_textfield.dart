import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class MotorReportTextField extends StatefulWidget {
  String? input;

  MotorReportTextField({
    super.key,
    this.input,
  });

  @override
  State<MotorReportTextField> createState() => _MotorReportTextFieldState();
}

class _MotorReportTextFieldState extends State<MotorReportTextField> {
  Textstyle textStyle = Textstyle();
  late TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.input);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (text) {
        setState(() {});
      },
      readOnly: true,
      controller: controller,
      style: textStyle.bodyLarge,
    );
  }
}
