import 'package:flutter/material.dart';
import 'package:tunesapp/model/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tune});
  final Tune tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound(tune.sound);
        },
        child: Container(color: tune.color),
      ),
    );
  }
}
