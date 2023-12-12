import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class ProfileTextField extends StatefulWidget {
  final String input;

  const ProfileTextField({
    super.key,
    required this.input,
  });

  @override
  State<ProfileTextField> createState() => _ProfileTextFieldState();
}

class _ProfileTextFieldState extends State<ProfileTextField> {
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
      controller: controller,
      style: textStyle.bodyLarge,
    );
  }
}
