import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class playpause extends StatelessWidget {
  final IconData icon;
  playpause({required this.icon}){}
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xFF21C263),
        shape: BoxShape.circle,
      ),
      child: Icon(icon),
    );
  }
}
