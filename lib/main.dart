import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(
      MaterialApp(
        title: 'Xylophone',
        debugShowCheckedModeBanner: false,
        home: XylophoneApp(),
      ),
    );

class XylophoneApp extends StatelessWidget {
  void playSound(int tone) {
    final player = AudioCache();
    player.play('note$tone.wav');
  }

  Widget customWidget({Color color, int tone}) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(tone);
          },
          child: Text(''),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            customWidget(color: Colors.red, tone: 1),
            customWidget(color: Colors.green, tone: 2),
            customWidget(color: Colors.blue, tone: 3),
            customWidget(color: Colors.yellow, tone: 4),
            customWidget(color: Colors.orange, tone: 5),
            customWidget(color: Colors.purple, tone: 6),
            customWidget(color: Colors.cyan, tone: 7),
          ],
        ),
      ),
    );
  }
}
