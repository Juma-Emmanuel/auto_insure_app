import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:voda_insure/Styles/style.dart';

class Post extends StatefulWidget {
  final String imagePath;
  final Color containerColor;
  final String companyName;
  final String coverType;
  final String postTime;
  final String postText;
  final String? photo;
  const Post(
      {super.key,
      required this.imagePath,
      required this.containerColor,
      required this.companyName,
      required this.coverType,
      required this.postTime,
      required this.postText,
      this.photo});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  Textstyle textStyle = Textstyle();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0XFF000000).withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  color: widget.containerColor,
                ),
                child: ClipOval(
                  child: Image.asset(widget.imagePath),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  children: [
                    Text(
                      widget.companyName,
                      style: textStyle.bodyLargeGrey,
                    ),
                    Text(
                      widget.coverType,
                      style: textStyle.bodyMediumGrey,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Row(
                  children: [
                    Text(
                      widget.postTime,
                      style: textStyle.bodyMediumGrey,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          size: 32,
                          color: Color(0XFF9C9494),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            left: 20.0,
          ),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/articlewebview');
            },
            child: Column(
              children: [
                Text(
                  widget.postText,
                  style: textStyle.bodyMediumGrey,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 22.0,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: widget.photo != null
                        ? Image.asset(
                            widget.photo!,
                          )
                        : Container(),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1.0, left: 18.0),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Color(0XFF0E2847),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.sms_outlined,
                    color: Color(0XFF0E2847),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 180.0),
                child: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.share,
                      color: Color(0XFF0E2847),
                    )),
              ),
            ],
          ),
        )
      ],
    );
  }
}
