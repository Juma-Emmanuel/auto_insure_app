import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorForms/BuyCoverScreen.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorReports/MycoverReport.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorStyles.dart';
import 'package:voda_insure/Styles/style.dart';

class MotorInsuranceScreen extends StatefulWidget {
  const MotorInsuranceScreen({super.key});

  @override
  State<MotorInsuranceScreen> createState() => _MotorInsuranceScreenState();
}

class _MotorInsuranceScreenState extends State<MotorInsuranceScreen> {
  Textstyle textStyle = Textstyle();
  final List<String> images = [
    'assets/audi.jpg',
    'assets/Carinsurance.jpg',
    'assets/motorinsurance.jpg',
  ];
  int _currentIndex = 0;
  List<bool> _dotColors = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        CarouselSlider(
          items: images.map((image) {
            return SizedBox(
              width: 500,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(image, fit: BoxFit.cover)),
            );
          }).toList(),
          options: CarouselOptions(
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
                _updateDotColors();
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Insure your Vehicle today!',
            style: textStyle.headlineSmallGrey,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _dotColors
              .asMap()
              .entries
              .map((entry) => _buildDot(entry.key, entry.value))
              .toList(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 19.0),
          child: MotorSelect(
            selectText: 'Buy Cover',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BuyCoverScreen()),
              );
            },
            icon: const Icon(
              Icons.monetization_on_outlined,
              color: Color(0XFF0E2847),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: MotorSelect(
            selectText: 'Register Vehicle',
            onTap: () {
              Navigator.pushNamed(context, '/registervehicle');
            },
            icon: const Icon(
              Icons.directions_car_outlined,
              color: Color(0XFF0E2847),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: MotorSelect(
            selectText: 'My cover',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MycoverReport()),
              );
            },
            icon: const Icon(
              Icons.verified_user_outlined,
              color: Color(0XFF0E2847),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: MotorSelect(
            selectText: 'My Vehicle/Motocycle Report',
            onTap: () {
              Navigator.pushNamed(context, '/vehicleslist');
            },
            icon: const Icon(
              Icons.text_snippet_outlined,
              color: Color(0XFF0E2847),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: MotorSelect(
            selectText: 'FAQS',
            onTap: () {
              Navigator.pushNamed(context, '/faqs');
            },
            icon: const Icon(
              Icons.question_mark_outlined,
              color: Color(0XFF0E2847),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: MotorSelect(
            selectText: 'Privacy Policy',
            onTap: () {
              Navigator.pushNamed(context, '/motorprivacypolicy');
            },
            icon: const Icon(
              Icons.lock_outline,
              color: Color(0XFF0E2847),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 19),
          child: MotorSelect(
            selectText: 'Terms and Conditions',
            onTap: () {
              Navigator.pushNamed(context, '/motortermsandconditions');
            },
            icon: const Icon(
              Icons.description_outlined,
              color: Color(0XFF0E2847),
            ),
          ),
        ),
      ]),
    );
  }

  Widget _buildDot(int index, bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? const Color(0XFF0E2847) : const Color(0XFF726666),
      ),
    );
  }

  void _updateDotColors() {
    for (int i = 0; i < _dotColors.length; i++) {
      _dotColors[i] = (i == _currentIndex);
    }
  }
}
