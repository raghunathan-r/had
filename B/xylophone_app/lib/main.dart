import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
// import 'package:audioplayers/src/audio_cache.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Xylophone App'),),
      body: XyloPage(),
    ),
  ));
}

class XyloPage extends StatefulWidget {
  const XyloPage({Key? key}) : super(key: key);

  @override
  State<XyloPage> createState() => _XyloPageState();
}

class _XyloPageState extends State<XyloPage> {
  void playSound(int i) {
    final player = AudioCache();
    player.play("note$i.wav");
  }

  // void playSound(int i) async {
  //   AudioPlayer audio = AudioPlayer();
  //   String file = 'assets/note$i.wav';
  //   ByteData data = await rootBundle.load(file);
  //   Uint8List audioData = data.buffer.asUint8List();
  //   await audio.playBytes(audioData);
  // }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lime,
            ),
            onPressed: () {
              playSound(1);
            },
            child: Text('First'),
          )),

          Expanded(child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.greenAccent,
            ),
            onPressed: () {
              playSound(2);
            },
            child: Text('Second'),
          )),

          Expanded(child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.indigo,
            ),
            onPressed: () {
              playSound(3);
            },
            child: Text('Third'),
          )),

          Expanded(child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
            onPressed: () {
              playSound(4);
            },
            child: Text('Fourth'),
          )),

          Expanded(child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent,
            ),
            onPressed: () {
              playSound(5);
            },
            child: Text('Fifth'),
          )),

          Expanded(child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.cyanAccent,
            ),
            onPressed: () {
              playSound(6);
            },
            child: Text('Sixth'),
          )),
        ],
      ),
    );
  }
}

