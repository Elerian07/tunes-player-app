import 'package:flutter/material.dart';
import 'package:tunesapp/model/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tunes});
  final Tune tunes;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tunes.playSound(tunes.sound);
        },
        child: Container(color: tunes.color),
      ),
    );
  }
}
