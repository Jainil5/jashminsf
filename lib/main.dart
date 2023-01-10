import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jashmins/pages/cart.dart';
import 'package:jashmins/pages/fav.dart';
import 'package:jashmins/pages/home.dart';
import 'package:jashmins/pages/menu.dart';
import 'package:jashmins/widgets/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPageIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Jashmin's"),
          backgroundColor: Colors.deepPurple,
        ),
        endDrawer: const MyDrawer(),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          animationDuration: const Duration(seconds:3),
          backgroundColor: Colors.deepPurpleAccent,
          height: 60,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.food_bank,color: CupertinoColors.activeOrange,size: 32,),
              icon: Icon(Icons.food_bank,size: 32,),
              label:"Jashmin's",
            ),
            NavigationDestination(
              selectedIcon:Icon(Icons.menu,color: CupertinoColors.white,size: 32,) ,
              icon: Icon(Icons.menu,size: 32,),
              label: 'Menu',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.favorite,color: CupertinoColors.destructiveRed,size: 32,),
              icon: Icon(Icons.favorite,size: 32,),
              label: 'Favourites',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.shopping_cart_sharp,color: CupertinoColors.systemBlue,size: 32,),
              icon: Icon(Icons.shopping_cart_sharp,size: 32,),
              label: 'Cart',
            ),
          ],
        ),
        body: const <Widget>[
          Home(),
          MenuPage(),
          FavPage(),
          CartPage(),
        ][currentPageIndex],
      ),
    );
  }
}
