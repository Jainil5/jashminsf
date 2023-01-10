import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jashmins/pages/cart.dart';
import 'package:jashmins/pages/fav.dart';
import 'package:jashmins/pages/menu.dart';
import 'package:video_player/video_player.dart';

import '../widgets/drawer.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex=0;

  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer(){
    controller = VideoPlayerController.asset('assets/videos/video.mp4');
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value){
      setState(() {});
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Column(
                  children: [
                    const Text("JASHMIN'S BLOGS",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold)),
                    const SizedBox(height: 50,),
                    const Text("#1 TRENDING",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    Card(
                      elevation: 50,
                      shadowColor: Colors.black,
                      color: CupertinoColors.white,
                      child: SizedBox(
                        width: 320,
                        //height: 500,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Image.asset("assets/images/sabji.jpg"), //NetworkImage
                              const SizedBox(
                                height: 20,
                              ), //SizedBox
                              const Text(
                                'PANEER BUTTER MASALA',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: CupertinoColors.destructiveRed,
                                  fontWeight: FontWeight.bold,
                                ), //Textstyle
                              ), //Text

                            ],
                          ), //Column
                        ), //Padding
                      ), //SizedBox
                    ),
                    const SizedBox(height: 100,),
                    const Text("#2 TRENDING",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    Card(
                      elevation: 100,
                      shadowColor: Colors.black,
                      color: CupertinoColors.white,
                      child: SizedBox(
                        width: 320,
                        //height: 500,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Image.asset("assets/images/food2.jpg"), //NetworkImage
                              const SizedBox(
                                height: 20,
                              ), //SizedBox
                              const Text(
                                'PANEER TIKKA MASALA',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: CupertinoColors.destructiveRed,
                                  fontWeight: FontWeight.bold,
                                ), //Textstyle
                              ), //Text

                            ],
                          ), //Column
                        ), //Padding
                      ), //SizedBox
                    ),
                    const SizedBox(height: 100,),
                    const Padding(padding: EdgeInsets.all(16),
                    child: Text("Indian food ranked amongs top 10 best foods in the world!",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),)),
                    Card(
                      elevation: 100,
                      shadowColor: Colors.black,
                      color: CupertinoColors.white,
                      child: SizedBox(
                        width: 320,
                        //height: 500,
                        child: Column(
                            children: [
                              Image.asset("assets/images/food3.jpg"), //NetworkImage
                              
                            ],
                        ), //Padding
                      ), //SizedBox
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}
