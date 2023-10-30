import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: Image.asset(niyas),
      leading: Avatar(displayImage: niyas2),
      title: TextField(
          decoration: InputDecoration(
              hintText: "Whats On Your Mind",
              hintStyle: TextStyle(color: Colors.black),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none)),
    );
  }
}
