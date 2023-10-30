import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class ClaimsScreen extends StatefulWidget {
  const ClaimsScreen({super.key});

  @override
  State<ClaimsScreen> createState() => _ClaimsScreenState();
}

class _ClaimsScreenState extends State<ClaimsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [logo()],
    );
  }
}
