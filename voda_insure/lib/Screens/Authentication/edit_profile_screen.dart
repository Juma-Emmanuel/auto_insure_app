import 'package:flutter/material.dart';
import 'package:voda_insure/Controllers/Authentication/fetch_profile_pic.dart';
import 'package:voda_insure/Controllers/Authentication/post_profile_pic.dart';
import 'package:voda_insure/Controllers/Authentication/user_profile_controller.dart';
import 'package:voda_insure/Controllers/Authentication/update_profile_controller.dart';
import 'package:voda_insure/Models/AuthModels/user_details_model.dart';
import 'package:voda_insure/Styles/style.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  Textstyle textStyle = Textstyle();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController phoneController = TextEditingController();
  late TextEditingController fullnameController = TextEditingController();
  UserProfileController userProfileController = UserProfileController();
  UpdateProfileRequest request = UpdateProfileRequest();
  PostProfilePic postProfilePic = PostProfilePic();
  FetchProfilePic fetchProfilePic = FetchProfilePic();
  UserDetailsModel? user;
  late int nationalId;
  Uint8List? _image;
  File? selectedImage;
  String? profileUrl;
  @override
  void initState() {
    super.initState();

    fetchData();
  }

  Future<void> fetchData() async {
    try {
      UserDetailsModel fetchedUser =
          await userProfileController.fetchUserDetails();
      String? fetchedProfileUrl =
          await fetchProfilePic.fetchProfilePic(fetchedUser.nationalId);

      setState(() {
        user = fetchedUser;
        fullnameController.text = user!.fullName;
        phoneController.text = user!.phoneNumber;
        emailController.text = user!.email;
        nationalId = user!.nationalId;
        profileUrl = fetchedProfileUrl;
      });
    } catch (e) {
      throw Exception('Error during fetch request: $e');
    }
  }

  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;

    setState(() {
      selectedImage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    if (selectedImage != null) {
      try {
        await postProfilePic.uploadFile(user!.nationalId, selectedImage!);
        fetchData();
      } catch (e) {
        throw Exception('Error: $e');
      }
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ElevatedButton(
              onPressed: () {
                request
                    .updateRequest(
                  nationalId,
                  fullnameController.text,
                  emailController.text,
                  phoneController.text,
                )
                    .then((success) {
                  if (success) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        margin: EdgeInsets.only(bottom: 410),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.green,
                        content: Text(
                          'Updated profile succesfully.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        margin: EdgeInsets.only(bottom: 410),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Color.fromARGB(255, 189, 56, 38),
                        content: Text('Registration failed. Please try again.'),
                      ),
                    );
                  }
                });
              },
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
                // _image != null
                profileUrl != null && profileUrl != "404"
                    ? CircleAvatar(
                        radius: 100,
                        // backgroundImage: MemoryImage(_image!),
                        backgroundImage: NetworkImage(profileUrl!),
                      )
                    : ClipOval(
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
                    onPressed: () {
                      showImagePickerOption(context);
                    },
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
                            child: TextField(
                              onChanged: (text) {
                                setState(() {});
                              },
                              controller: emailController,
                              style: textStyle.bodyLarge,
                            )),
                      ]),
                )
              : const CircularProgressIndicator(),
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
                            child: TextField(
                              onChanged: (text) {
                                setState(() {});
                              },
                              controller: phoneController,
                              style: textStyle.bodyLarge,
                            ))
                      ]))
              : const CircularProgressIndicator(),
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
                            child: TextField(
                              onChanged: (text) {
                                setState(() {});
                              },
                              controller: fullnameController,
                              style: textStyle.bodyLarge,
                            )
                            // child: ProfileTextField(
                            //   input: user!.fullName,
                            // ),
                            ),
                      ]),
                )
              : const CircularProgressIndicator(),
        ]),
      ),
    );
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.blue[100],
        context: context,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.5,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromGallery();
                        fetchData();
                      },
                      child: const SizedBox(
                          child: Column(
                        children: [
                          Icon(
                            Icons.image,
                            size: 70,
                          ),
                          Text('Gallery')
                        ],
                      )),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromCamera();
                      },
                      child: const SizedBox(
                          child: Column(
                        children: [
                          Icon(
                            Icons.camera_alt,
                            size: 70,
                          ),
                          Text('Camera')
                        ],
                      )),
                    ),
                  )
                ],
              ),
            ),
          );
        });

    // Camera

    // @override
    // void dispose() {
    //   super.dispose();
    // }
  }

  //Gallery
  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedImage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    if (selectedImage != null) {
      try {
        await postProfilePic.uploadFile(8, selectedImage!);
      } catch (e) {
        throw Exception('Error: $e');
      }
    }
    Navigator.of(context).pop();
  }
}
