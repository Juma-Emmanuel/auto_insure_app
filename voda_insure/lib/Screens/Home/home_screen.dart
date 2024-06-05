import 'package:flutter/material.dart';
import 'package:voda_insure/Screens/Authentication/user_profile.dart';
import 'package:voda_insure/Screens/Claims/claims_screen.dart';
import 'package:voda_insure/Screens/Home/drawer.dart';

import 'package:voda_insure/Screens/Home/post_view.dart';
import 'package:voda_insure/Screens/MedicalInsurance/medical_insurance.dart';
import 'package:voda_insure/Screens/MotorInsurance/motor_insurance_screen.dart';
import 'package:voda_insure/Styles/style.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Appstyle appStyle = Appstyle();
  int _currentIndex = 0;

  // List of widgets corresponding to each tab
  final List<Widget> _tabs = [
    const Postview(),
    const MotorInsuranceScreen(),
    const ClaimsScreen(),
    const MedicalInsuranceScreen(),
    const UserProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: appStyle.logo(),
            ),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none,
                  size: 25,
                  color: Color(0XFF9C9494),
                ))
          ],
        ),
        iconTheme: const IconThemeData(
          size: 30.0,
          color: Color(0XFF9C9494),
        ),
      ),
      endDrawer: const MyDrawer(),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        selectedItemColor: const Color(0XFF021E3E),
        unselectedItemColor: const Color(0XFF021E3E),
        selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color(0XFF021E3E)),
        unselectedLabelStyle: const TextStyle(color: Color(0XFF021E3E)),
        backgroundColor: Colors.amber,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.directions_car,
            ),
            label: 'Motor',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.note_outlined,
            ),
            label: 'Claims',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.medical_services_outlined,
            ),
            
            label: 'Medical',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
