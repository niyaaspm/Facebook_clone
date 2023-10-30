import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/settingsSection.dart';
import 'package:facebook_clone/widgets/CircularButton.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/chatList.dart';
import 'package:flutter/material.dart';

class ChatsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
        actions: [
          Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey[300], shape: BoxShape.circle),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingsSection(),
                        ));
                  },
                  icon: Icon(
                    Icons.settings,
                    size: 25,
                  ))),
          CircularButton(buttonIcon: Icons.edit_square, buttonAction: () {}),
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          ChatList(avatar: niyas, name: "Rumaiz", onlineStatus: "Online"),
          ChatList(avatar: niyas3, name: "Anfaz", onlineStatus: "Offline"),
          ChatList(avatar: niyas4, name: "Rufaid", onlineStatus: "Online"),
          ChatList(avatar: niyas5, name: "Adil", onlineStatus: "Online")
        ],
      )),
    );
  }
}
