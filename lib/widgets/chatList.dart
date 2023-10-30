import 'package:facebook_clone/sections/messageSection.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  final String name;
  final String avatar;
  final String onlineStatus;
  ChatList(
      {required this.avatar, required this.name, required this.onlineStatus});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayImage: avatar),
      title: Text(name),
      subtitle: Text(onlineStatus),
      trailing: Icon(Icons.chat),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MessagePage(),
            ));
      },
    );
  }
}
