import 'package:flutter/material.dart';
import 'package:voda_insure/Controllers/MotorInsurance/get_motor_covers.dart';
import 'package:voda_insure/Models/MotorModels/get_motor_cover_model.dart';

import 'package:voda_insure/Screens/Claims/MotorClaims/ClaimForms/make_claim.dart';

import 'package:voda_insure/Styles/style.dart';

class ClaimsCoversList extends StatefulWidget {
  const ClaimsCoversList({super.key});

  @override
  State<ClaimsCoversList> createState() => _ClaimsCoversListState();
}

class _ClaimsCoversListState extends State<ClaimsCoversList> {
  GetMotorCovers getMotorCovers = GetMotorCovers();
  List<GetMotorCoverModel> motorCovers = [];
  @override
  void initState() {
    super.initState();
    fetchMotorCovers();
  }

  Future<void> fetchMotorCovers() async {
    try {
      List<GetMotorCoverModel> fetchedMotorCovers =
          await getMotorCovers.fetchMotorCovers(1212);
      setState(() {
        motorCovers = fetchedMotorCovers;
      });
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }

  Textstyle textStyle = Textstyle();
  Appstyle appStyle = Appstyle();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
              child: Column(
            children: [
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
                  'MY Motor Covers ',
                  style: textStyle.bodyLarge,
                ),
              ),
              separator,
              motorCovers.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : Container(
                      child: Column(
                        children: [
                          for (int index = 0;
                              index < motorCovers.length;
                              index++)
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          MakeMotorClaimScreen(
                                        motorId: motorCovers[index].motorId,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 250,
                                  height: 80,
                                  decoration: shadow,
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                      10.0,
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 114,
                                          height: 60,
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.asset(
                                                'assets/white_lexus.jpg',
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Text(
                                            motorCovers[index].policyNumber,
                                            style: textStyle.bodyLarge,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
            ],
          )),
        ],
      ),
    );
  }
}
