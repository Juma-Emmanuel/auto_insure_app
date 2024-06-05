import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class MedicalClaimDetailsTextField extends StatefulWidget {
  final String input;

  const MedicalClaimDetailsTextField({
    super.key,
    required this.input,
  });

  @override
  State<MedicalClaimDetailsTextField> createState() =>
      _MedicalClaimDetailsTextFieldState();
}

class _MedicalClaimDetailsTextFieldState
    extends State<MedicalClaimDetailsTextField> {
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
