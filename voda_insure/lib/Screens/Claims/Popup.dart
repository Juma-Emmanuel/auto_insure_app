import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class Popup extends StatefulWidget {
  const Popup({super.key});

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 50),
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 48,
              width: 340,
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
