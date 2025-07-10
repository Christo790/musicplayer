import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_player/constants.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:music_player/isplay.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  bool isplay = true;
  IconData play = FontAwesomeIcons.play;
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('NOW PLAYING', style: k_appbartext),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(30),
              child: Container(
                child: Image.asset("images/cover.jpg", fit: BoxFit.cover),
              ),
            ),
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Text('Marshmello', style: k_smalltext),
                Text('Keep It Mello', style: k_bigtext),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children: [
                    
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(FontAwesomeIcons.rotateRight, color: grey),
                    Icon(FontAwesomeIcons.backwardStep, color: grey),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isplay == true) {
                            isplay = false;
                            play = FontAwesomeIcons.pause;
                            player.play(AssetSource('music.mp3'));
                          } else {
                            isplay = true;
                            play = FontAwesomeIcons.play;
                            player.pause();
                          }
                        });
                      },
                      child: playpause(icon: play),
                    ),
                    Icon(FontAwesomeIcons.forwardStep, color: grey),
                    Icon(FontAwesomeIcons.shuffle, color: grey),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
