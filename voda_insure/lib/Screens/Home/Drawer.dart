import 'package:flutter/material.dart';
import 'package:voda_insure/Screens/Home/Privacypolicy.dart';
import 'package:voda_insure/Screens/Home/TermsandConditions.dart';
import 'package:voda_insure/Styles/style.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  Textstyle textStyle = Textstyle();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: logo(),
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
          Column(
            children: <Widget>[
              ListTile(
                title: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.settings_outlined,
                          size: 30,
                          color: Color(0XFF021E3E),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Settings',
                            style: textStyle.bodyMediumGrey,
                          ),
                        ),
                      ],
                    )),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    const Icon(
                      Icons.update_outlined,
                      size: 30,
                      color: Color(0XFF021E3E),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Updates',
                        style: textStyle.bodyMediumGrey,
                      ),
                    ),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    const Icon(
                      Icons.share_outlined,
                      size: 30,
                      color: Color(0XFF021E3E),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Share',
                        style: textStyle.bodyMediumGrey,
                      ),
                    ),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    const Icon(
                      Icons.lock_outlined,
                      size: 30,
                      color: Color(0XFF021E3E),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Private Policy',
                        style: textStyle.bodyMediumGrey,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PrivatePolicyScreen()),
                  );
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    const Icon(
                      Icons.description_outlined,
                      size: 30,
                      color: Color(0XFF021E3E),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Terms and Conditions',
                        style: textStyle.bodyMediumGrey,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TermsandConditions()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
