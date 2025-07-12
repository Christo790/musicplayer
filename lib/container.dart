import 'package:flutter/material.dart';
import 'package:music_player/constants.dart';
import 'package:music_player/playerpage.dart';

class containerwidget extends StatelessWidget {
  final String img;
  final String text;
  final Color color;
  containerwidget({
    required this.img,
    required this.color,
    required this.text,
  }) {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Player()),
        );
      },

      child: Container(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(text, style: kcontainertext),
            Expanded(
              child: ClipRRect(child: Image.asset(img, fit: BoxFit.cover)),
            ),
          ],
        ),
        height: 300,
        width: 200,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

class smallbox extends StatelessWidget {
  final String title;
  final String subtitle;
  final String img;
  smallbox({required this.title, required this.subtitle, required this.img}) {}
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,

      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(img, height: 150, width: 150),
          ),
          SizedBox(height: 7),

          Text(title, style: kalbumlarge),
          SizedBox(height: 7),
          Text(subtitle, style: kalbumsmall),
        ],
      ),
    );
  }
}
