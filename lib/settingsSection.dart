// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SettingsSection extends StatelessWidget {
  SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Security & Privacy"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          // Text(
          //   "seccurity & privacy",
          //   style: TextStyle(fontSize: 20),
          // ),
          // thikDivider,
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.archive),
            ),
            title: Text("Archive Chats"),
          ),
          thikDivider,
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.greenAccent,
              child: Icon(
                Icons.check,
              ),
            ),
            title: Text("Active Status"),
          ),
          thikDivider,
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.message),
            ),
            title: Text("Message Requests"),
          ),
          thikDivider,
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.privacy_tip),
            ),
            title: Text("Privacy"),
          ),
          thikDivider
        ],
      ),
    );
  }

  Widget thikDivider = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );
}
