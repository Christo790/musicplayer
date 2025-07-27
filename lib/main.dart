import 'package:flutter/material.dart';
import 'package:music_player/home.dart';
import 'package:music_player/music_list.dart';
import 'package:music_player/playerpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(0xFF080B18)),
        scaffoldBackgroundColor: Color(0xFF080B18),
      ),
    );
  }
}
