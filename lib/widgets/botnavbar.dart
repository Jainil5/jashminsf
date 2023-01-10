import 'package:flutter/material.dart';

class BNB extends StatefulWidget {
  const BNB({Key? key}) : super(key: key);

  @override
  State<BNB> createState() => _BNBState();
}

class _BNBState extends State<BNB> {
  @override
  Widget build(BuildContext context) {
    int currentPageIndex=0;
    return NavigationBar(
      selectedIndex: currentPageIndex,
      surfaceTintColor: Colors.red,
      backgroundColor: Colors.deepPurple,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.book_rounded),
          icon: Icon(Icons.book_outlined),
          label: "Jashmin's",
        ),
        NavigationDestination(
          selectedIcon:Icon(Icons.task) ,
          icon: Icon(Icons.task_outlined),
          label: 'Menu',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.notes_rounded),
          icon: Icon(Icons.notes),
          label: 'Favourites',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.newspaper),
          icon: Icon(Icons.newspaper),
          label: 'News',
        ),
      ],
    );
  }
}
