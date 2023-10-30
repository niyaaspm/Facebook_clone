import 'package:facebook_clone/widgets/CircularButton.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labeltext;
  final String story;
  final String avatar;
  final bool createStoryStatus;

  final bool displayBorder;
  StoryCard(
      {required this.labeltext,
      required this.story,
      required this.avatar,
      this.createStoryStatus = false,
      this.displayBorder = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(bottom: 10, top: 10, left: 5, right: 5),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                story,
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus
                ? CircularButton(
                    buttonIcon: Icons.add,
                    iconColor: Colors.blue,
                    buttonAction: () {})
                : Avatar(
                    displayImage: avatar,
                    displayBorder: displayBorder,
                  ),
          ),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                labeltext != null ? labeltext : "N/A",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
