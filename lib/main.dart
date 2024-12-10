import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.audioCache = AudioCache(prefix: 'assets/');
                player.play(
                  AssetSource('note1.wav'),
                );
              },
              child: Text('Click Me'),
            ),
          ),
        ),
      ),
    );
  }
}
