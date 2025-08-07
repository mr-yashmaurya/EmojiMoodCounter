import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var leftEmoji = 2;
  var rightEmoji = 3;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(backgroundColor: Colors.white, title: Text('Emoji Mood Counter', style: TextStyle(fontSize: 30 ,fontWeight: FontWeight.w400, fontFamily: ' MozillaHeadline'))),

      body: GestureDetector(
        onTap: () {
          var random1 = Random().nextInt(5) + 1;
          var random2 = Random().nextInt(5) + 1;
          print(random1);
          print(random2);
          setState(() {
            leftEmoji = random1;
            rightEmoji = random2;
          });
        },
        child: Center(
          child: Row(
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(image: AssetImage('images/a${leftEmoji}.png')),
              )),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(image: AssetImage('images/a${rightEmoji}.png')),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
