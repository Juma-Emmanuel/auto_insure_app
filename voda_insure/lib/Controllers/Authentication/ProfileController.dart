import 'package:flutter/material.dart';

class ProfileController extends StatefulWidget {
  const ProfileController({super.key});

  @override
  State<ProfileController> createState() => _ProfileControllerState();
}

class _ProfileControllerState extends State<ProfileController> {
  TextEditingController _textController =
      TextEditingController(text: 'Initial Text');

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
