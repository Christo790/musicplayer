import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:music_player/constants.dart';
import 'package:music_player/container.dart';
import 'package:music_player/playerpage.dart';

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
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Color(0xFF181A27),
              borderRadius: BorderRadius.circular(20),
            ),
            width: double.infinity,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 0, 18.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.magnifyingGlass, size: 20),
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
                  Icon(FontAwesomeIcons.ellipsis, size: 20),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 20), // left padding
                  containerwidget(
                    color: Color(0xFF7166F0),
                    text: 'Get Chill',
                    img: '01.png',
                  ),
                  const SizedBox(width: 20),
                  containerwidget(
                    img: "02.png",
                    color: Color(0xFF21C263),
                    text: 'Lets Dance',
                  ),
                  const SizedBox(width: 20),
                  containerwidget(
                    img: '03.png',
                    color: Color(0xFFFF9800),
                    text: 'Be Cool',
                  ),
                  const SizedBox(width: 20), // right padding
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              child: Text('New Collection', style: knewcollection),
              padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    smallbox(
                      img: '4.jpg',
                      subtitle: 'Thiruma Li',
                      title: 'MALAYALI DA',
                    ),
                    SizedBox(width: 20),
                    smallbox(
                      title: 'AAYIRAM AURA ',
                      subtitle: 'FEJO',
                      img: '1.jpg',
                    ),
                    SizedBox(width: 20),
                    smallbox(title: 'PANIPAALI', subtitle: 'N J', img: '7.jpg'),
                    SizedBox(width: 20),

                    smallbox(
                      title: 'UNSHAIKABLE',
                      subtitle: 'Thiruma Li',
                      img: '5.jpg',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
