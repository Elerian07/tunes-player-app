import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Tune {
  final Color color;
  final String sound;

  Tune({required this.color, required this.sound});

  void playSound(sound) {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
