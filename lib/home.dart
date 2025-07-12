import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_player/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text('Browse', style: k_appbartitle),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(FontAwesomeIcons.bars),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Color(0xFF181A27),
              borderRadius: BorderRadius.circular(20),
            ),
            width: double.infinity,
            height: 70,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 0, 18.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.magnifyingGlass),
                  SizedBox(width: 30),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search..',
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(FontAwesomeIcons.ellipsis),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 20), // left padding
                  Container(
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color(0xFF7166F0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color(0xFF21C263),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFEB3B),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 20), // right padding
                ],
              ),
            ),
          ),

          Text('New Collection'),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
