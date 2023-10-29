import "package:flutter/material.dart";
import "package:voda_insure/Screens/Home/Drawer.dart";
import "package:voda_insure/Styles/style.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 55),
              child: logo(),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CompanyFeed(
                    imagePath: 'assets/jubilee.png',
                    containerColor: const Color(0XFFD21044),
                    onTap: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: CompanyFeed(
                      imagePath: 'assets/apa_logo.png',
                      containerColor: const Color(0XFF0D4093),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                    child: CompanyFeed(
                      imagePath: 'assets/uap_logo.jpg',
                      containerColor: const Color(0XFFCC003D),
                      onTap: () {},
                    ),
                  ),
                  CompanyFeed(
                    imagePath: 'assets/cicgroup.png',
                    containerColor: Colors.white,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                left: 10,
                right: 10,
              ),
              child: Container(
                height: 1,
                color: const Color(0XFFBBBBBB),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
