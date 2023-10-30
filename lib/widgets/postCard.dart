import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/blueTick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final bool showBlueTick;
  final String postTitle;
  final String postImage;
  final String likeCount;
  final String ShareCount;
  final String CommentCount;
  PostCard(
      {required this.avatar,
      required this.name,
      required this.publishedAt,
      this.showBlueTick = false,
      required this.postTitle,
      required this.postImage,
      required this.likeCount,
      required this.ShareCount,
      required this.CommentCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          footerButton()
        ],
      ),
    );
  }

  Widget footerButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
        Text('Like'),
        VerticalDivider(
          thickness: 5,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
        Text('comment'),
        VerticalDivider(
          color: Colors.grey[300],
          thickness: 5,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.screen_share)),
        Text('Share'),
      ],
    );
  }

  Widget footerSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Container(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                      child: Icon(
                        Icons.thumb_up,
                        color: Colors.white,
                        size: 14,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  displayText(label: likeCount),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  displayText(label: CommentCount),
                  SizedBox(
                    width: 5,
                  ),
                  displayText(label: "comments"),
                  SizedBox(
                    width: 10,
                  ),
                  displayText(label: ShareCount),
                  SizedBox(
                    width: 5,
                  ),
                  displayText(label: "Shares"),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget imageSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Container(
        child: Image.asset(postImage),
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: avatar),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox()
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? "" : publishedAt),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            color: Colors.grey[700],
          )),
    );
  }

  Widget titleSection() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        child: Text(
          postTitle == null ? "" : postTitle,
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    );
  }
}
