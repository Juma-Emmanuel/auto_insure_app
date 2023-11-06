import 'package:flutter/material.dart';

import 'package:voda_insure/Styles/style.dart';

class MedicalClaimsDocumentsScreen extends StatefulWidget {
  const MedicalClaimsDocumentsScreen({super.key});

  @override
  State<MedicalClaimsDocumentsScreen> createState() =>
      _MedicalClaimsDocumentsScreenState();
}

class _MedicalClaimsDocumentsScreenState
    extends State<MedicalClaimsDocumentsScreen> {
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
              'Claim Documents',
              style: textStyle.bodyLarge,
            ),
          ),
          separator,
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        SizedBox(
                            width: 25, child: Image.asset('assets/pdf.png')),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'policy.pdf',
                            style: textStyle.bodyMediumBlue,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30),
                    child: Text(
                      '10/09/2023',
                      style: textStyle.bodyMediumBlue,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        showMenu(
                          context: context,
                          position: const RelativeRect.fromLTRB(
                              50.0, 400.0, 50.0, 0.0),
                          items: [
                            PopupMenuItem(
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.download_outlined,
                                    size: 30,
                                    color: Color(0XFF021E3E),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'Download',
                                      style: textStyle.bodyMediumBlue,
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {},
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.share_outlined,
                                    size: 30,
                                    color: Color(0XFF021E3E),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'Share',
                                      style: textStyle.bodyMediumBlue,
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {},
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.edit_outlined,
                                    size: 30,
                                    color: Color(0XFF021E3E),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'Rename',
                                      style: textStyle.bodyMediumBlue,
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/medicalclaimuploadsreport');
                              },
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.delete_outline,
                                    size: 30,
                                    color: Color(0XFF021E3E),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'Delete',
                                      style: textStyle.bodyMediumBlue,
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {},
                            ),
                          ],
                        );
                      },
                      icon: const Icon(Icons.more_vert)),
                ],
              ),
              separator,
            ],
          )
        ]),
      ),
    );
  }
}
