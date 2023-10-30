import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/sections/StorySection.dart';
import 'package:facebook_clone/sections/statussections.dart';
import 'package:facebook_clone/widgets/postCard.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        StatusSection(),
        Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        StorySection(),
        Divider(
          thickness: 15,
          color: Colors.grey[300],
        ),
        PostCard(
          avatar: niyas3,
          name: "Rumaiz",
          publishedAt: "8h",
          showBlueTick: true,
          postTitle: "Chilling",
          postImage: forest,
          likeCount: "350",
          ShareCount: "23",
          CommentCount: "36",
        ),
        PostCard(
          avatar: niyas4,
          name: "Anfaz",
          publishedAt: "23h",
          showBlueTick: true,
          postTitle: "Evening",
          postImage: post2,
          likeCount: "216",
          ShareCount: "12",
          CommentCount: "22",
        ),
      ],
    );
  }
}
