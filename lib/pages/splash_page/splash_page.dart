import 'package:flutter/material.dart';

import '../bottom_bar/bottom_bar.dart';

class spalsh_page extends StatefulWidget {
  const spalsh_page({Key? key}) : super(key: key);

  @override
  State<spalsh_page> createState() => _spalsh_pageState();
}

class _spalsh_pageState extends State<spalsh_page> {

  @override
  void initState() {
    super.initState();
    Delay();
  }

  Future Delay() async {
    await Future.delayed(Duration(seconds: 1),);
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => bottom_bar()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00b593),
      body: Center(
        child: Image.asset("images/2.jpg"),
      ),

    );
  }
}
