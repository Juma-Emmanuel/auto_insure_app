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

class CompanyFeed extends StatefulWidget {
  final String imagePath;
  final Color containerColor;
  final VoidCallback? onTap;
  const CompanyFeed(
      {super.key,
      required this.imagePath,
      required this.containerColor,
      this.onTap});

  @override
  State<CompanyFeed> createState() => _CompanyFeedState();
}

class _CompanyFeedState extends State<CompanyFeed> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: 60,
        height: 60,
        // color: Colors.blue,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: const Color(0XFF000000).withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
          color: widget.containerColor,
        ),
        child: ClipOval(
          child: Image.asset(widget.imagePath),
        ),
      ),
    );
  }
}
