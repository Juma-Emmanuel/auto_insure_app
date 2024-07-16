import 'package:flutter/material.dart';

class Appstyle {
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
}

void _showPopup(BuildContext context, Widget popupWidget) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return popupWidget;
    },
  );
}

final OutlineInputBorder textfieldBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(20.0),
  borderSide: const BorderSide(
    color: Color(0XFFBBBBBB),
    width: 2.0,
  ),
);
BoxDecoration shadow = BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: const Color(0XFF000000).withOpacity(0.2),
      spreadRadius: 2,
      blurRadius: 3,
      offset: const Offset(0, 3),
    ),
  ],
);

class Textstyle {
  TextStyle buttonText = const TextStyle(
    color: Color(0XFFFFFFFF),
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
  );
  TextStyle bbodyMediumGrey = const TextStyle(
    color: Color(0XFF726666),
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
  );
  TextStyle bodyMediumWhite = const TextStyle(
    color: Color(0XFFFFFFFF),
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
  );
  TextStyle bodyMediumGrey = const TextStyle(
    color: Color(0XFF726666),
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
  TextStyle bbodySmallGrey = const TextStyle(
    color: Color(0XFF726666),
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
  );
  TextStyle bbodySmallblue = const TextStyle(
    color: Color(0XFF0E2847),
    fontSize: 12.0,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
  TextStyle bodySmallGrey = const TextStyle(
    color: Color(0XFF726666),
    fontSize: 12.0,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
  TextStyle bodyMediumBlue = const TextStyle(
    color: Color(0XFF0E2847),
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
  );
  TextStyle bbodyMediumBlue = const TextStyle(
    color: Color(0XFF0E2847),
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
  TextStyle headlineMedium = const TextStyle(
    color: Color(0XFF0E2847),
    fontSize: 28.0,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
  TextStyle headlineSmallGrey = const TextStyle(
    color: Color(0XFF726666),
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
  TextStyle bodyLargeGrey = const TextStyle(
    color: Color(0XFF726666),
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
  );
  TextStyle bodyLargeBlue = const TextStyle(
    color: Color(0XFF0E2847),
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
  );
  TextStyle bodyLarge = const TextStyle(
    color: Color(0XFF021E3E),
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
  );
}

Padding separator = Padding(
  padding: const EdgeInsets.only(
    top: 8.0,
    left: 10,
    right: 10,
  ),
  child: Container(
    height: 1,
    color: const Color(0XFFBBBBBB),
  ),
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

class DatePicker extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  const DatePicker({super.key, required this.controller, required this.label});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  Textstyle textStyle = Textstyle();
  Future<void> _renewalSelectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != DateTime.now()) {
      setState(() {
        String formattedDate =
            '${pickedDate?.month}/${pickedDate?.day}/${pickedDate?.year}';

        widget.controller.text = formattedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: textStyle.bodyLarge,
        ),
        SizedBox(
          width: 350,
          height: 38,
          child: TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(Icons.calendar_month),
                onPressed: () {
                  _renewalSelectDate(context);
                },
              ),
              enabledBorder: textfieldBorder,
              focusedBorder: textfieldBorder,
            ),
            readOnly: true,
          ),
        ),
      ],
    );
  }
}
