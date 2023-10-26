import 'package:flutter/material.dart';

Widget logo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
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
  );
}

final OutlineInputBorder textfieldBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(20.0),
  borderSide: const BorderSide(
    color: Color(0XFFBBBBBB),
    width: 2.0,
  ),
);
const TextStyle bodyMediumWhite = TextStyle(
  color: Color(0XFFFFFFFF),
  fontSize: 16.0,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,
);
const TextStyle bodyMediumGrey = TextStyle(
  color: Color(0XFF726666),
  fontSize: 16.0,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,
);
const TextStyle bodyMediumBlue = TextStyle(
  color: Color(0XFF0E2847),
  fontSize: 16.0,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,
);
const TextStyle headlineMedium = TextStyle(
  color: Color(0XFF0E2847),
  fontSize: 28.0,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
);
const TextStyle bodyLargeGrey = TextStyle(
  color: Color(0XFF726666),
  fontSize: 20.0,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
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

TextEditingController _textController =
    TextEditingController(text: 'Initial Text');
