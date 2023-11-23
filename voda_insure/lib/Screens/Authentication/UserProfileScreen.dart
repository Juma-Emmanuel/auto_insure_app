import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  Textstyle textStyle = Textstyle();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: ClipOval(
            child: Container(
              width: 160,
              height: 160,
              color: const Color(0XFFECD9D9),
              child: const Center(
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: Color(0XFF958C8C),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: Text(
            'Torvald Linus',
            style: textStyle.headlineMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
          ),
          child: Text(
            '+254712345678',
            style: textStyle.bodyLargeGrey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'torvaldlinus@yahoo.com',
                style: textStyle.bodyMediumGrey,
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 10,
                ),
                width: 127,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/editprofilescreen');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFF021E3E),
                  ),
                  child: Text(
                    'Edit Profile',
                    style: textStyle.bodyMediumWhite,
                  ),
                ),
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
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 10,
              ),
              child: SizedBox(
                // width: 179,
                height: 62,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0XFF958C8C),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.credit_card,
                            size: 30,
                            color: Color(0XFF0E2847),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Payment',
                                style: textStyle.bbodyMediumGrey,
                              ),
                              Text(
                                'Details',
                                style: textStyle.bodyMediumBlue,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                // width: 179,
                height: 62,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0XFF958C8C),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.signal_cellular_alt,
                            size: 30,
                            color: Color(0XFF0E2847),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Premiums',
                            style: textStyle.bodyMediumBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.logout,
                        size: 30,
                        color: Color(0XFF958C8C),
                      ),
                      Text(
                        'Log out',
                        style: textStyle.bodyMediumGrey,
                      ),
                    ],
                  )),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      const Icon(
                        Icons.delete_forever,
                        size: 30,
                        color: Color(0XFF958C8C),
                      ),
                      Text(
                        'Delete account',
                        style: textStyle.bodyMediumGrey,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
