import 'package:flutter/material.dart';

import '../bottom_bar/bottom_bar.dart';

class SpalshPage extends StatefulWidget {
  const SpalshPage({Key? key}) : super(key: key);

  @override
  State<SpalshPage> createState() => _SpalshPageState();
}

class _SpalshPageState extends State<SpalshPage> {
  Future delay() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    if (!mounted) return;
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const BottomBar()));
  }

  @override
  void initState() {
    super.initState();
    delay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00b593),
      body: Center(
        child: Image.asset("images/2.jpg"),
      ),
    );
  }
}
