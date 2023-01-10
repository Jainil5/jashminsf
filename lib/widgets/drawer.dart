import 'package:flutter/material.dart';
import '../pages/home.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                shape: BoxShape.rectangle,
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Jashmin's",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                  selectionColor: Colors.amber,
                ),
              ),
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.account_circle_rounded,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("My profile"),
                ],
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Settings"),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.info,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("About us"),
                ],
              ),
              onTap: () {}
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.logout,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Logout"),
                ],
              ),
              onTap: () {
                }
            ),
          ],
        ),
      );
  }
}
