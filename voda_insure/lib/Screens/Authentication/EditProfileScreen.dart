import 'package:flutter/material.dart';
import 'package:voda_insure/Styles/style.dart';
import 'package:voda_insure/Controllers/Authentication/ProfileController.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController fullnameController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFF021E3E),
              ),
              child: const Text(
                'Save',
                style: bodyMediumWhite,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Stack(
              children: <Widget>[
                ClipOval(
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
                Padding(
                  padding: const EdgeInsets.only(top: 100.0, left: 90),
                  child: TextButton(
                    onPressed: () {},
                    child: ClipOval(
                      child: Container(
                        width: 60,
                        height: 60,
                        color: const Color(0XFF021E3E),
                        child: const Center(
                          child: Icon(
                            Icons.photo_camera,
                            size: 26,
                            color: Color(0XFFFFFFFF),
                          ),
                        ),
                      ),
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
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                // height: 21,
                margin: const EdgeInsets.only(
                  bottom: 20.0,
                ),
                child: const Text(
                  'Email',
                  style: bodyMediumGrey,
                ),
              ),
              const SizedBox(
                height: 15,
                child: ProfileTextField(
                  input: 'ttt',
                ),
              ),
            ]),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // height: 21,
                      margin: const EdgeInsets.only(
                        bottom: 20.0,
                      ),
                      child: const Text(
                        'Phone Number',
                        style: bodyMediumGrey,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                      child: ProfileTextField(
                        input: 'halo',
                      ),
                    )
                  ])),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                // height: 21,
                margin: const EdgeInsets.only(
                  bottom: 20.0,
                ),
                child: const Text(
                  'Full Name',
                  style: bodyMediumGrey,
                ),
              ),
              const SizedBox(
                height: 15,
                child: ProfileTextField(
                  input: 'hiiiii',
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
