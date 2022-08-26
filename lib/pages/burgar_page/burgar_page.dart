import 'package:flutter/material.dart';

class burgar extends StatefulWidget {

  final String imagepath;
  final String timee;
  final String rname;
  final String stars;
  final String disc;

  burgar({
    required this.imagepath,
    required this.timee,
    required this.rname,
    required this.stars,
    required this.disc,
  });

  @override
  State<burgar> createState() => _burgarState();
}

class _burgarState extends State<burgar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
        ],
      ),
    );
  }
}
