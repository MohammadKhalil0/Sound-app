import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Expanded myButton(int musicNumber, String buttonText, Color buttonColor) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 1.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource('music-$musicNumber.mp3'));
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Icon(Icons.music_note, color: buttonColor),
                SizedBox(width: 20,),
                Text(buttonText, style: TextStyle(color: buttonColor, fontSize: 20)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(backgroundColor: Colors.purple, title: Text('Sounds', style: TextStyle(color: Colors.white),)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(1, 'samsung galaxy', Colors.red),
            myButton(2, 'samsung note', Colors.green),
            myButton(3, 'nokia', Colors.black),
            myButton(4, 'iphone 11', Colors.orange),
            myButton(5, 'whatsapp', Colors.blue),
            myButton(6, 'samsung s7', Colors.purple),
            myButton(7, 'iphone 6', Colors.black),
          ],
        ),
      ),
    );
  }
}
