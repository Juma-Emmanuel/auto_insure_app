import 'package:flutter/material.dart';
import 'package:voda_insure/Controllers/Authentication/UserProfileController.dart';
import 'package:voda_insure/Models/AuthModels/UserDetailsModel.dart';
import 'package:voda_insure/Styles/style.dart';
import 'package:voda_insure/Controllers/Authentication/ProfileTextField.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  Textstyle textStyle = Textstyle();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController fullnameController = TextEditingController();
  UserProfileController userProfileController = UserProfileController();

  UserDetailsModel? user;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      UserDetailsModel fetchedUser =
          await userProfileController.fetchUserDetails();
      setState(() {
        user = fetchedUser;
      });
    } catch (e) {
      throw Exception('Error during fetch request: $e');
    }
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
              child: Text(
                'Save',
                style: textStyle.bodyMediumWhite,
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
          separator,
          user != null
              ? Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 20.0,
                          ),
                          child: Text(
                            'Email',
                            style: textStyle.bodyMediumGrey,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                          child: ProfileTextField(
                            input: user!.email,
                          ),
                        ),
                      ]),
                )
              : CircularProgressIndicator(),
          user != null
              ? Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 20.0,
                          ),
                          child: Text(
                            'Phone Number',
                            style: textStyle.bodyMediumGrey,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                          child: ProfileTextField(
                            input: user!.phoneNumber,
                          ),
                        )
                      ]))
              : CircularProgressIndicator(),
          user != null
              ? Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 20.0,
                          ),
                          child: Text(
                            'Full Name',
                            style: textStyle.bodyMediumGrey,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                          child: ProfileTextField(
                            input: user!.fullName,
                          ),
                        ),
                      ]),
                )
              : CircularProgressIndicator(),
        ]),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
