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
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 120),
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 48,
              width: 355,
              decoration: shadow,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(right: 9.0),
                      child: Icon(Icons.directions_car)),
                  Text(
                    'Motor',
                    style: bodyLargeGrey,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 50),
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 48,
              width: 355,
              decoration: shadow,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(right: 9.0),
                      child: Icon(Icons.medical_services)),
                  Text(
                    'Medical',
                    style: bodyLargeGrey,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
