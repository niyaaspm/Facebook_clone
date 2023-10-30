import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/sections/searchSection.dart';

import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  const Friends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Friends'),
        actions: [
          Container(
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
                          builder: (context) => const SearchSection(),
                        ));
                  },
                  icon: const Icon(Icons.search))),
        ],
      ),
      body: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 217, 216, 214),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.note_alt), Text('Suggestions')],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 217, 216, 214),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.more),
                    SizedBox(
                      width: 2,
                    ),
                    Text('Your Friends')
                  ],
                ),
              ),
            )
          ],
        ),
        const Divider(
          thickness: 1,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Friend requstes',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('See all',
                  style: TextStyle(fontSize: 20, color: Colors.blue)),
            )
          ],
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(niyas5),
          ),
          title: Text("Anfaz Muhammed"),
          subtitle: Container(
            child: Row(
              children: [
                Container(
                  child: Center(child: Text("Accept")),
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: Center(child: Text("Decline")),
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[300]),
                )
              ],
            ),
          ),
          trailing: Text("2h ago"),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(niyas4),
          ),
          title: Text("Rumaiz Ahammed"),
          subtitle: Container(
            child: Row(
              children: [
                Container(
                  child: Center(child: Text("Accept")),
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: Center(child: Text("Decline")),
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[300]),
                )
              ],
            ),
          ),
          trailing: Text("2h ago"),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(niyas3),
          ),
          title: Text("Muhammed Rufaid"),
          subtitle: Container(
            child: Row(
              children: [
                Container(
                  child: Center(child: Text("Accept")),
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: Center(child: Text("Decline")),
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[300]),
                )
              ],
            ),
          ),
          trailing: Text("1d ago"),
        )
      ]),
    );
  }
}
