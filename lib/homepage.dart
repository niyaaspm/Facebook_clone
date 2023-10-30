import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/firstpage.dart';
import 'package:facebook_clone/marketPlace.dart';
import 'package:facebook_clone/menuPage.dart';
import 'package:facebook_clone/sections/ChatsSection.dart';
import 'package:facebook_clone/sections/StorySection.dart';
import 'package:facebook_clone/sections/notificationSection.dart';
import 'package:facebook_clone/sections/searchSection.dart';
import 'package:facebook_clone/sections/statussections.dart';
import 'package:facebook_clone/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/widgets/CircularButton.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  ValueNotifier notifier = ValueNotifier(0);
  List screen = [
    FirstPage(),
    MarketPlace(),
    MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: notifier,
        builder: (context, value, _) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Text(
                "faceBook",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
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
                                builder: (context) => SearchSection(),
                              ));
                        },
                        icon: Icon(
                          Icons.search,
                          size: 25,
                        ))),
                Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Notifications(),
                              ));
                        },
                        icon: Icon(
                          Icons.notifications,
                          size: 25,
                        ))),
                Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChatsSection(),
                              ));
                        },
                        icon: Icon(
                          Icons.chat,
                          size: 25,
                        ))),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag_outlined),
                    label: "Market Place"),
                BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
              ],
              currentIndex: value,
              onTap: (value) {
                notifier.value = value;
              },
            ),
            body: screen[value],
            // body: ListView(
            //   children: [
            //     StatusSection(),
            //     Divider(
            //       thickness: 1,
            //       color: Colors.grey,
            //     ),
            //     StorySection(),
            //     Divider(
            //       thickness: 15,
            //       color: Colors.grey[300],
            //     ),
            //     PostCard(
            //       avatar: niyas3,
            //       name: "Rumaiz",
            //       publishedAt: "8h",
            //       showBlueTick: true,
            //       postTitle: "Chilling",
            //       postImage: forest,
            //       likeCount: "350",
            //       ShareCount: "23",
            //       CommentCount: "36",
            //     ),
            //     PostCard(
            //       avatar: niyas4,
            //       name: "Anfaz",
            //       publishedAt: "23h",
            //       showBlueTick: true,
            //       postTitle: "Evening",
            //       postImage: post2,
            //       likeCount: "216",
            //       ShareCount: "12",
            //       CommentCount: "22",
            //     ),
            //   ],
            // ),
          );
        });
  }
}
