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
              showMenu(
                context: context,
                position: const RelativeRect.fromLTRB(50.0, 400.0, 50.0, 0.0),
                items: [
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0XFF958C8C),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.note_add,
                            size: 30,
                            color: Color(0XFF0E2847),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Make claims',
                            style: textStyle.bodyMediumBlue,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/claimscoverlist');
                    },
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0XFF958C8C),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.description,
                            size: 30,
                            color: Color(0XFF0E2847),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Claims History',
                            style: textStyle.bodyMediumBlue,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/motorclaimshistory');
                    },
                  ),
                ],
              );
            },
            child: Container(
              height: 48,
              width: 355,
              decoration: shadow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                      padding: EdgeInsets.only(right: 9.0),
                      child: Icon(Icons.directions_car)),
                  Text(
                    'Motor Claims',
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
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(50.0, 400.0, 50.0, 0.0),
                items: [
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0XFF958C8C),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.note_add,
                            size: 30,
                            color: Color(0XFF0E2847),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Make claims',
                            style: textStyle.bodyMediumBlue,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/makemedicalclaim');
                    },
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0XFF958C8C),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.description,
                            size: 30,
                            color: Color(0XFF0E2847),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Claims History',
                            style: textStyle.bodyMediumBlue,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/medicalclaimshistory');
                    },
                  ),
                ],
              );
            },
            child: Container(
              height: 48,
              width: 355,
              decoration: shadow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                      padding: EdgeInsets.only(right: 9.0),
                      child: Icon(Icons.medical_services)),
                  Text(
                    'Self Medical Claims',
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
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(50.0, 400.0, 50.0, 0.0),
                items: [
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0XFF958C8C),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.note_add,
                            size: 30,
                            color: Color(0XFF0E2847),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Make claims',
                            style: textStyle.bodyMediumBlue,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/makemedicalclaim');
                    },
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0XFF958C8C),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.description,
                            size: 30,
                            color: Color(0XFF0E2847),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Claims History',
                            style: textStyle.bodyMediumBlue,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/medicalclaimshistory');
                    },
                  ),
                ],
              );
            },
            child: Container(
              height: 48,
              width: 355,
              decoration: shadow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                      padding: EdgeInsets.only(right: 9.0),
                      child: Icon(Icons.medical_services)),
                  Text(
                    'Corporate Medical Claims',
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
