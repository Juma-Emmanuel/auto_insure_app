import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class VehiclesList extends StatefulWidget {
  const VehiclesList({super.key});

  @override
  State<VehiclesList> createState() => _VehiclesListState();
}

class _VehiclesListState extends State<VehiclesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            width: 350,
            height: 48,
            child: logo(),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              'MY VEHICLES/MOTOCYCLES REPORT ',
              style: bodyLarge,
            ),
          ),
          separator,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/motorvehiclemotorcyclereport');
                },
                child: Container(
                  width: 250,
                  height: 80,
                  decoration: shadow,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 114,
                          height: 60,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/white_lexus.jpg',
                                fit: BoxFit.cover,
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'KDC 5000',
                            style: bodyLarge,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
