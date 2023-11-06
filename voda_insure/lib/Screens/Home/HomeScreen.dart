import 'package:flutter/material.dart';
import 'package:voda_insure/Screens/Authentication/UserProfileScreen.dart';
import 'package:voda_insure/Screens/Claims/ClaimsScreen.dart';
import 'package:voda_insure/Screens/Home/Drawer.dart';

import 'package:voda_insure/Screens/Home/PostView.dart';
import 'package:voda_insure/Screens/MedicalInsurance/MedicalInsuranceScreen.dart';
import 'package:voda_insure/Screens/MotorInsurance/MotorInsuranceScreen.dart';
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
              padding: const EdgeInsets.only(top: 8.0, right: 55),
              child: appStyle.logo(),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none,
                  size: 32,
                  color: Color(0XFF9C9494),
                ))
          ],
        ),
        iconTheme: const IconThemeData(
          size: 32.0,
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
