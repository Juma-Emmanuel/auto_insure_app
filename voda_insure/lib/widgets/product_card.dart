import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OurProduct extends StatelessWidget {
  OurProduct(
      {super.key, required this.text, required this.icon, required this.ontap});
  String text;
  Widget icon;
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: ontap,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.45,
          height: MediaQuery.of(context).size.width * 0.2,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 1,
                offset: Offset(2, 1),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 193, 189, 226),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(8),
                child: icon,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  padding: EdgeInsets.only(left: 12),
                  child: Text(text))
            ],
          ),
        ),
      ),
    );
  }
}
