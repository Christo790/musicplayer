import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:music_player/constants.dart';
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
                  GestureDetector(
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
                          Text('Get Chill', style: kcontainertext),
                          Expanded(
                            child: ClipRRect(
                              child: Image.asset('01.png', fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xFF7166F0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
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
                          Text('Lets Dance', style: kcontainertext),
                          Expanded(
                            child: ClipRRect(
                              child: Image.asset('02.png', fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xFF21C263),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
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
                          Text('Be Cool', style: kcontainertext),
                          Expanded(
                            child: ClipRRect(
                              child: Image.asset('03.png', fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF9800),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
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
                    Container(
                      width: 150,

                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              '4.jpg',
                              height: 150,
                              width: 150,
                            ),
                          ),
                          SizedBox(height: 7),

                          Text('MALAYALI DA', style: kalbumlarge),
                          SizedBox(height: 7),
                          Text('Thiruma Li', style: kalbumsmall),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 150,

                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              '1.jpg',
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7),

                          Text('AAYIRAM AURA ', style: kalbumlarge),
                          SizedBox(height: 7),
                          Text('FEJO', style: kalbumsmall),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 150,

                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              '7.jpg',
                              height: 150,
                              width: 150,
                            ),
                          ),
                          SizedBox(height: 7),

                          Text('PANIPAALI', style: kalbumlarge),
                          SizedBox(height: 7),
                          Text('N J', style: kalbumsmall),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),

                    Container(
                      width: 150,

                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              '5.jpg',
                              height: 150,
                              width: 150,
                            ),
                          ),
                          SizedBox(height: 7),

                          Text('UNSHAIKABLE', style: kalbumlarge),
                          SizedBox(height: 7),
                          Text('Thiruma Li', style: kalbumsmall),
                        ],
                      ),
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
