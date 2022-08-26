import 'package:flutter/material.dart';

class burgar extends StatefulWidget {
  const burgar({Key? key}) : super(key: key);

  @override
  State<burgar> createState() => _burgarState();
}

class _burgarState extends State<burgar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
    );
  }
}
