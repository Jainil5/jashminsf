import 'package:flutter/material.dart';

class FavPage extends StatefulWidget {
  const FavPage({Key? key}) : super(key: key);

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.greenAccent[100],
      child: SizedBox(
        width: 180,
        height: 400,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset("assets/images/food2.jpg"), //NetworkImage
              const SizedBox(
                height: 10,
              ), //SizedBox
              Text(
                'GeeksforGeeks',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.green[900],
                  fontWeight: FontWeight.w500,
                ), //Textstyle
              ), //Text
              const SizedBox(
                height: 10,
              ), //SizedBox
              const Text(
                'GeeksforGeeks is a computer science portal for geeks at geeksforgeeks.org. It contains well written, well thought and well explained computer science and programming articles, quizzes, projects, interview experiences and much more!!',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                ), //Textstyle
              ), //Text
              const SizedBox(
                height: 10,
              ), //SizedBox
              SizedBox(
                width: 100,

                child: ElevatedButton(
                  onPressed: () => 'Null',
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.green)),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Row(
                      children: const [
                        Icon(Icons.touch_app),
                        Text('Visit')
                      ],
                    ),
                  ),
                ),
                // RaisedButton is deprecated and should not be used
                // Use ElevatedButton instead

                // child: RaisedButton(
                //   onPressed: () => null,
                //   color: Colors.green,
                //   child: Padding(
                //     padding: const EdgeInsets.all(4.0),
                //     child: Row(
                //       children: const [
                //         Icon(Icons.touch_app),
                //         Text('Visit'),
                //       ],
                //     ), //Row
                //   ), //Padding
                // ), //RaisedButton
              ) //SizedBox
            ],
          ), //Column
        ), //Padding
      ), //SizedBox
    ); //Card
  }
}
