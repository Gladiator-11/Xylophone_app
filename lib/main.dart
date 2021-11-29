import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void PlaySound(int soundnote) {
    final player = AudioCache();
    player.play('note$soundnote.wav');
  }

  Expanded buildkey(Color color, int soundNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          PlaySound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Musical Instrument',
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(Colors.red, 1),
              buildkey(Colors.teal, 2),
              buildkey(Colors.black, 3),
              buildkey(Colors.blue, 4),
              buildkey(Colors.green, 5),
              buildkey(Colors.purple, 6),
              buildkey(Colors.yellow, 7),
            ],
          ),
        ),
      ),
    );
  }
}
