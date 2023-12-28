import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Xylophone_2());
}

class Xylophone_2 extends StatelessWidget {
  const Xylophone_2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homeview(),
    );
  }
}

Widget piano(
  String Musicspiel,
  Color colors,
  double breite,
  double shrift,
  String letitgo,
) {
  return GestureDetector(
    onTap: () {
      final player = AudioPlayer();
      player.play(AssetSource("notes/$letitgo"));
    },
    child: Container(
      width: breite,
      height: 85,
      decoration: BoxDecoration(
        color: colors,
      ),
      child: Center(
        child: Text(
          Musicspiel,
          style: TextStyle(fontSize: shrift),
        ),
      ),
    ),
  );
}

class Homeview extends StatefulWidget {
  Homeview({super.key});
  @override
  State<Homeview> createState() => _MyAppState();
}

class _MyAppState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Tapshyrma 5'),
      ),
      body: Column(
        children: [
          piano('do', Colors.red, 700, 30, 'note_1.wav'),
          piano('re', Colors.green, 700, 30, 'note_2.wav'),
          piano('mi', Colors.purple, 700, 30, 'note_3.wav'),
          piano('fa', Colors.amber, 700, 30, 'note_4.wav'),
          piano('sol', Colors.blue, 700, 30, 'note_5.wav'),
          piano('li', Colors.orange, 700, 30, 'note_6.wav'),
        ],
      ),
    );
  }
}
