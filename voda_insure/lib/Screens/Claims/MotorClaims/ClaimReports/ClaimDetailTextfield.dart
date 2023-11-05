import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class MotorClaimDetailsTextField extends StatefulWidget {
  final String input;

  const MotorClaimDetailsTextField({
    super.key,
    required this.input,
  });

  @override
  State<MotorClaimDetailsTextField> createState() =>
      _MotorClaimDetailsTextFieldState();
}

class _MotorClaimDetailsTextFieldState
    extends State<MotorClaimDetailsTextField> {
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
