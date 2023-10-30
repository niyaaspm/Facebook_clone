import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/storycard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labeltext: "Add to Your Story",
            avatar: niyas,
            story: niyas2,
            createStoryStatus: true,
          ),
          StoryCard(
            labeltext: "Adil",
            avatar: niyas,
            story: scooty,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labeltext: "Rumaiz",
            avatar: niyas3,
            story: car,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labeltext: "Anfaz",
            avatar: niyas4,
            story: pool,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labeltext: "Rufaid",
            avatar: niyas5,
            story: forest,
            createStoryStatus: false,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
