import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
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
                    child: const Row(
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          size: 30,
                          color: Color(0XFF021E3E),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Settings',
                            style: bodyMediumGrey,
                          ),
                        ),
                      ],
                    )),
                onTap: () {},
              ),
              ListTile(
                title: TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.update_outlined,
                          size: 30,
                          color: Color(0XFF021E3E),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Updates',
                            style: bodyMediumGrey,
                          ),
                        ),
                      ],
                    )),
                onTap: () {},
              ),
              ListTile(
                title: TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.share_outlined,
                          size: 30,
                          color: Color(0XFF021E3E),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Share',
                            style: bodyMediumGrey,
                          ),
                        ),
                      ],
                    )),
                onTap: () {},
              ),
              ListTile(
                title: TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.lock_outlined,
                          size: 30,
                          color: Color(0XFF021E3E),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Private Policy',
                            style: bodyMediumGrey,
                          ),
                        ),
                      ],
                    )),
                onTap: () {},
              ),
              ListTile(
                title: TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.description_outlined,
                          size: 30,
                          color: Color(0XFF021E3E),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Terms and Conditions',
                            style: bodyMediumGrey,
                          ),
                        ),
                      ],
                    )),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
