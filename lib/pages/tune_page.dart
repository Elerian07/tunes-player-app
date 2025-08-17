import 'package:flutter/material.dart';
import 'package:tunesapp/model/tune_model.dart';
import 'package:tunesapp/widgets/tune_item.dart';

class TunePage extends StatelessWidget {
  TunePage({super.key});
  final List<Tune> tunes = [
    Tune(color: Color(0xffF44336), sound: "note1.wav"),
    Tune(color: Color(0xffF89800), sound: "note2.wav"),
    Tune(color: Color(0xffFEEB3B), sound: "note3.wav"),
    Tune(color: Color(0xff4CAF50), sound: "note4.wav"),
    Tune(color: Color(0xff2F9688), sound: "note5.wav"),
    Tune(color: Color(0xff2896F3), sound: "note6.wav"),
    Tune(color: Color(0xff9C27B0), sound: "note7.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter Tune", style: TextStyle(color: Colors.white)),
        elevation: 0,
        backgroundColor: Color(0xff253238),
      ),
      body: Column(children: tunes.map((e) => TuneItem(tunes: e)).toList()),
    );
  }
}
