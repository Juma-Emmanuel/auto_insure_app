import 'package:flutter/material.dart';

Widget logo() {
  return Container(
    child: Row(
      children: [
        SizedBox(
          width: 50.16,
          height: 40,
          child: Image.asset('assets/voda_logo.png'),
        ),
        const Text(
          'VODA',
          style: TextStyle(
            fontSize: 26,
            color: Color(0XFF726666),
            fontWeight: FontWeight.w600,
          ),
        ),
        const Text(
          'INSURE',
          style: TextStyle(
            fontSize: 26,
            color: Color(0XFFF30E0E),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}

final OutlineInputBorder textfieldBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(20.0),
  borderSide: const BorderSide(
    color: Color(0XFFBBBBBB),
    width: 2.0,
  ),
);
const TextStyle bodyLarge = TextStyle(
  color: Color(0XFF021E3E),
  fontSize: 20.0,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);
const TextStyle buttonText = TextStyle(
  color: Color(0XFFFFFFFF),
  fontSize: 20.0,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);
