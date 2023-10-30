import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayBorder;
  final double width;
  final double height;
  Avatar(
      {required this.displayImage,
      this.displayBorder = false,
      this.height = 40,
      this.width = 40});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: displayBorder
                  ? Border.all(color: Colors.blueAccent, width: 3)
                  : Border()),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                displayImage,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              )),
        ),
      ],
    );
  }
}
