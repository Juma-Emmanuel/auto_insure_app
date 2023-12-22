import 'package:flutter/material.dart';
import 'package:voda_insure/Controllers/Claims/GetMotorClaims.dart';
import 'package:voda_insure/Controllers/MotorInsurance/GetMotorCovers.dart';
import 'package:voda_insure/Models/Claims/GetMotorClaimModel.dart';
import 'package:voda_insure/Models/MotorModels/GetMotorCoverModel.dart';

import 'package:voda_insure/Styles/style.dart';

class MotorClaimsHistory extends StatefulWidget {
  const MotorClaimsHistory({super.key});

  @override
  State<MotorClaimsHistory> createState() => _MotorClaimsHistoryState();
}

class _MotorClaimsHistoryState extends State<MotorClaimsHistory> {
  Textstyle textStyle = Textstyle();
  Appstyle appStyle = Appstyle();
  GetMotorClaims getMotorClaims = GetMotorClaims();

  List<GetMotorClaimModel> motorClaims = [];

  @override
  void initState() {
    super.initState();
    fetchMotorClaims();
  }

  Future<void> fetchMotorClaims() async {
    try {
      List<GetMotorClaimModel> fetchedMotorClaims =
          await getMotorClaims.fetchMotorClaims(1212);

      setState(() {
        motorClaims = fetchedMotorClaims;
      });
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }

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
          motorClaims.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    for (int index = 0; index < motorClaims.length; index++)
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 120),
                        child: InkWell(
                          onTap: () {
                            showMenu(
                              context: context,
                              position: const RelativeRect.fromLTRB(
                                  50.0, 400.0, 50.0, 0.0),
                              items: [
                                PopupMenuItem(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: const Color(0XFF958C8C),
                                          borderRadius:
                                              BorderRadius.circular(15),
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
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: const Icon(
                                          Icons.upload,
                                          size: 30,
                                          color: Color(0XFF0E2847),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
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
                                'Claim $motorClaims[index].Id.toString()',
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
