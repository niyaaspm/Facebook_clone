import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/friendRequests.dart';
import 'package:facebook_clone/sections/searchSection.dart';
import 'package:facebook_clone/widgets/chatList.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Notification'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SearchSection(),
                            ));
                      },
                      icon: const Icon(Icons.search))),
            ),
          ],
        ),
        body: Column(
          children: [
            ListTile(
              title: Text("You have new Friend Requests"),
              subtitle: Text("Tap to see"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Friends(),
                    ));
              },
            ),
            Divider(
              thickness: 2,
              color: Colors.grey[300],
            ),
            ChatList(
                avatar: niyas,
                name: "Adil Liked Your Post",
                onlineStatus: "1h ago"),
            ChatList(
                avatar: niyas3,
                name: "Started Following you",
                onlineStatus: "2h ago")
          ],
        ));
  }
}
