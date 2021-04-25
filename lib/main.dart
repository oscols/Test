import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

void playClip(familyMemberName) {
  int number = Random().nextInt(2) + 1;
  final player = AudioCache();
  player.play('$familyMemberName$number.wav');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('The Yoda Family'),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    child: Image.asset('assets/baby-yoda.jpg'),
                    onPressed: () {
                      playClip('baby-yoda');
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Image.asset('assets/sticker-baby-yoda.jpg'),
                    onPressed: () {
                      playClip('sticker-baby-yoda');
                    },
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    child: Image.asset('assets/Yoda.png'),
                    onPressed: () {
                      playClip('Yoda');
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Image.asset('assets/yoda.jpeg'),
                    onPressed: () {
                      playClip('yoda');
                    },
                  ),
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
