import 'package:flutter/material.dart';

import 'package:voda_insure/Styles/style.dart';

class MotorClaimsHistory extends StatefulWidget {
  const MotorClaimsHistory({super.key});

  @override
  State<MotorClaimsHistory> createState() => _MotorClaimsHistoryState();
}

class _MotorClaimsHistoryState extends State<MotorClaimsHistory> {
  Textstyle textStyle = Textstyle();
  Appstyle appStyle = Appstyle();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0XFF726666),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            width: 350,
            height: 48,
            child: appStyle.logo(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              'Claims',
              style: textStyle.bodyLarge,
            ),
          ),
          separator,
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 120),
                child: InkWell(
                  onTap: () {
                    showMenu(
                      context: context,
                      position:
                          const RelativeRect.fromLTRB(50.0, 400.0, 50.0, 0.0),
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
                                  Icons.description,
                                  size: 30,
                                  color: Color(0XFF0E2847),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'View  Details Report',
                                  style: textStyle.bodyMediumBlue,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/motorclaimdetailsreport');
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
                                  Icons.upload,
                                  size: 30,
                                  color: Color(0XFF0E2847),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text(
                                    'View Uploads Report',
                                    style: textStyle.bodyMediumBlue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/motorclaimuploadsreport');
                          },
                        ),
                      ],
                    );
                  },
                  child: Container(
                    height: 48,
                    width: 355,
                    decoration: shadow,
                    child: Center(
                      child: Text(
                        'Claim 1',
                        style: textStyle.bodyLargeBlue,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: InkWell(
                  onTap: () {
                    showMenu(
                      context: context,
                      position:
                          const RelativeRect.fromLTRB(50.0, 400.0, 50.0, 0.0),
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
                                  Icons.description,
                                  size: 30,
                                  color: Color(0XFF0E2847),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'View  Details Report',
                                  style: textStyle.bodyMediumBlue,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/motorclaimdetailsreport');
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
                                  Icons.upload,
                                  size: 30,
                                  color: Color(0XFF0E2847),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text(
                                    'View Uploads Report',
                                    style: textStyle.bodyMediumBlue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/motorclaimuploadsreport');
                          },
                        ),
                      ],
                    );
                  },
                  child: Container(
                    height: 48,
                    width: 355,
                    decoration: shadow,
                    child: Center(
                      child: Text(
                        'Claim 2',
                        style: textStyle.bodyLargeBlue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
