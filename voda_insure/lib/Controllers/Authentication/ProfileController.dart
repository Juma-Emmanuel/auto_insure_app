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
      controller: controller,
      style: bodyLarge,
    );
  }
}

class MyTextField extends StatefulWidget {
  final Widget profileTextfield;
  const MyTextField({super.key, required this.profileTextfield});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return widget.profileTextfield;
  }
}
