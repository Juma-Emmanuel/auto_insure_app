// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:voda_insure/Screens/Home/post.dart';
import 'package:voda_insure/Styles/style.dart';
import 'package:voda_insure/widgets/product_card.dart';

class Postview extends StatefulWidget {
  const Postview({super.key});

  @override
  State<Postview> createState() => _PostviewState();
}

class _PostviewState extends State<Postview> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(16),
            color: const Color(0xFFEFEDFF),
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset("assets/motor-vehicle.png")),
                const Text(
                  'Secure your future with us!',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0058A7)),
                ),
              ],
            ),
          ),
          Column(
            children: [
              const Text('Our Products',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  OurProduct(
                    text: 'Comprehensive Insurance',
                    icon: Icon(Icons.local_car_wash, color: Color(0xFF0058A7)),
                    ontap: () {},
                  ),
                  OurProduct(
                    text: 'ThirdParty Insurance',
                    icon: const FaIcon(
                      FontAwesomeIcons.shieldAlt,
                      size: 20,
                      color: Color(0xFF0058A7),
                    ),
                    ontap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  OurProduct(
                    text: 'Personal Injury Protection (PIP)',
                    icon: Icon(Icons.health_and_safety,
                        size: 20, color: Color(0xFF0058A7)),
                    ontap: () {},
                  ),
                  OurProduct(
                    text: 'Collision Insurance',
                    icon: const FaIcon(
                      FontAwesomeIcons.carCrash,
                      size: 20,
                      color: Color(0xFF0058A7),
                    ),
                    ontap: () {},
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
