import 'package:flutter/material.dart';

import 'package:voda_insure/Styles/style.dart';

class ClaimsScreen extends StatefulWidget {
  const ClaimsScreen({super.key});

  @override
  State<ClaimsScreen> createState() => _ClaimsScreenState();
}

class _ClaimsScreenState extends State<ClaimsScreen> {
  Textstyle textStyle = Textstyle();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 120),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/claimscoverlist');
            },
            child: Container(
              height: 48,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: shadow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                      padding: EdgeInsets.only(right: 9.0),
                      child: Icon(Icons.note_add)),
                  Text(
                    'Make Claims',
                    style: textStyle.bodyLargeGrey,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 50),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/motorclaimshistory');
            },
            child: Container(
              height: 48,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: shadow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                      padding: EdgeInsets.only(right: 9.0),
                      child: Icon(Icons.description)),
                  Text(
                    'Claims History',
                    style: textStyle.bodyLargeGrey,
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
